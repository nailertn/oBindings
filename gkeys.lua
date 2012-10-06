local ns = oBindings

local g_states = {}

local my_states = {
	'alt-ctrl-shift|[ mod:alt, mod:ctrl, mod:lshift, nomod:rshift ]', 'alt-ctrl-shift',
	'alt-ctrl|[ mod:alt, mod:ctrl, nomod:rshift ]', 'alt-ctrl',
	'alt-shift|[ mod:alt, mod:lshift, nomod:rshift ]', 'alt-shift',
	'ctrl-shift|[ mod:ctrl, mod:lshift, nomod:rshift ]', 'ctrl-shift',
	
	'alt|[ mod:alt, nomod:rshift ]', 'alt',
	'ctrl|[ mod:ctrl, nomod:rshift ]', 'ctrl',
	'shift|[ mod:lshift, nomod:rshift ]', 'shift',
	
	'g_alt|[ mod:alt, mod:rshift ]', 'alt-shift',
	'g_ctrl|[ mod:ctrl, mod:rshift ]', 'ctrl-shift',
	'g_shift|[ mod:lshift, mod:rshift ]', 'shift',
	'g_nomod|[ mod:rshift ]', 'shift',
}

-- use our own version of alt,ctrl,shift
for index = 3, 1, -1  do
	tremove(ns.states, index)
end

for index = 1, #my_states, 2 do
	local state, mod = my_states[index], my_states[index + 1]
	local name = string.split('|', state, 2)
	
	tinsert(ns.states, (index + 1) / 2, state)
	ns.modTable[name] = mod ~= 'nomod' and mod
	if name:find('^g_%w+') then
		g_states[name:gsub('^(g_)(%w+)','%2')] = name
	end
end

local aliases = {
	BUTTON7 = ',',
}

local function replace_aliases(bindings)
	for key, action in next, bindings do
		if type(action) == 'table' then
			replace_aliases(action)
		else
			local alias = aliases[key] or (type(key) == 'string' and aliases[key:upper()])
			
			if alias then
				bindings[key] = nil
				bindings[alias] = action
			end
		end
	end
end

local key_map = {
	BUTTON3 = 'O',
	BUTTON4 = 'P',
	BUTTON5 = 'J',
	BUTTON6 = 'K',
	BUTTON8 = 'L',
	
	G1 = 'F1',
	G2 = 'F2',
	G3 = 'F3',
	G4 = 'F4',
	G5 = 'F5',
	G6 = 'F6',
	
	G7 = 'F7',
	G8 = 'F8',
	G9 = 'F9',
	G10 = 'F10',
	G11 = 'F11',
	G12 = 'F12',
	
	G13 = 'UP',
	G14 = 'DOWN',
	G15 = 'LEFT',
	G16 = 'RIGHT',
	G17 = 'U',
	G18 = 'I',
}

local temp_bindings
local function filter_g_keys(bindings, source_key, source_table)
	source_key = source_key or 'nomod'
	source_table = source_table or bindings
	
	local new_g_key, new_g_table = g_states[source_key]
		
	for key, action in next, source_table do
		if type(action) == 'table' then
			if g_states[key] then
				filter_g_keys(bindings, key, action)
			end
		else
			for g_key, o_key in next, key_map do
				if type(key) == 'string' and key:upper() == g_key then
					new_g_table = new_g_table or {}
					
					new_g_table[o_key] = action
					source_table[key] = nil
				end
			end		
		end
	end
	
	temp_bindings[new_g_key] = new_g_table
	
	if not next(source_table) then
		bindings[source_key] = nil
	end
end

local orig_RegisterKeyBindings = ns.RegisterKeyBindings
function ns:RegisterKeyBindings(name, ...)
	orig_RegisterKeyBindings(ns, name, ...)
	
	local bindings = ns._BINDINGS[name]
	
	replace_aliases(bindings)
	
	temp_bindings = {}
	filter_g_keys(bindings)
	
	for k, v in next, temp_bindings do
		bindings[k] = v
	end	
end
