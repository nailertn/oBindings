local _, bindings = ...

local warlock = {
	[1] = 's|Shadow Bolt',
}
oBindings:RegisterKeyBindings('WARLOCK', bindings.base, warlock)