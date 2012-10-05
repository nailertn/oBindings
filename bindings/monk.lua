local _, bindings = ...

local monk = {
	F1 = 'm|/cast [@mouseover, harm, nodead] [harm, nodead] Provoke',
	F2 = 's|Expel Harm',
	F4 = 's|Chi Brew',
	F8 = 's|Zen Flight',
	F9 = 's|Path of Blossoms',
	
	[0] = 's|Roll',
	[1] = 's|Jab',
	[2] = 's|Tiger Palm',
	[3] = 's|Blackout Kick',
	[5] = 's|Touch of Death',
	BACKSPACE = 'm|' .. bindings.healing_potions .. '\n/cast Fortifying Brew\n/cast Expel Harm',
	
	R = 's|Spear Hand Strike',
	T = 's|Paralysis',
	A = 's|Fortifying Brew',
	D = 's|Crackling Jade Lightning',
	F = 's|Healing Sphere',
	Y = 'm|/cast Dampen Harm\n/cast Diffuse Magic',
	X = 's|Spinning Crane Kick',
	C = 'm|/cast Charging Ox Wave\n/cast Leg Sweep',
	
	NUMPAD1 = 'm|/equipset dps\n/usetalents [spec:2] 1',
	NUMPAD2 = 'm|/equipset heal\n/usetalents [spec:1] 2\n/cast Stance of the Wise Serpent\n/cast Pearl Milk Tea',
	NUMPAD3 = 'm|/cast [help, dead] Resuscitate; Mass Resurrection',
	NUMPAD5 = 'm|/cast Legacy of the Emperor',
	
	BUTTON4 = 'm|/cast [@mouseover, nodead] [nodead] [@player] Chi Wave\n/cast [@mouseover, help, nodead] [help, nodead] [@player] Zen Sphere\n/cast [@mouseover, nodead] [nodead] [@player] Chi Burst',
	BUTTON8 = 'm|/cast [@mouseover, help, nodead] [help, nodead] [@player] Detox',
	
	alt = {
		[0] = 's|Zen Meditation',
		
		X = 'm|/cast Invoke Xuen, the White Tiger\n/cast Rushing Jade Wind',
		
		BUTTON4 = 'm/cast [@mouseover, harm, nodead] [harm, nodead] Grapple Weapon',
		BUTTON5 = 'm/cast [@mouseover, harm, nodead] [harm, nodead] Disable',
		BUTTON8 = "m|/cast [@mouseover, help, nodead] [help, nodead] [@player] Tiger's Lust",
		MOUSEWHEELUP = 's|Transcendence: Transfer',
		MOUSEWHEELDOWN = 's|Transcendence',
	},
}
oBindings:RegisterKeyBindings('MONK', bindings.base, monk)

local mistweaver = {
	F3 = 's|Thunder Focus Tea',
	F5 = 's|Revival',
	
	[4] = 's|Mana Tea',
	
	--BUTTON2 = 'm|/cast [@mouseover, help, nodead] [help, nodead] [@player] Renewing Mist',
	BUTTON3 = 'm|/cast [@mouseover, help, nodead] [help, nodead] [@player] Uplift',
	BUTTON5 = 'm|/cast [@mouseover, help, nodead] [help, nodead] [@player] Enveloping Mist',
	BUTTON6 = 's|Summon Jade Serpent Statue',
	MOUSEWHEELUP = 'm|/cast [@mouseover, help, nodead] [help, nodead] [@player] Surging Mist',
	MOUSEWHEELDOWN = 'm|/cast [@mouseover, help, nodead] [help, nodead] [@player] Soothing Mist',
	
	alt = {
		BUTTON3 = 'm|/cast [@mouseover, help, nodead] [help, nodead] [@player] Life Cocoon',
	}
}
oBindings:RegisterKeyBindings('Mistweaver', bindings.base, monk, mistweaver)

local windwalker = {
	F3 = 's|Energizing Brew',
	F5 = 's|Touch of Karma',
	
	[4] = 's|Tigereye Brew',
	
	BUTTON3 = 'm|/cast [@mouseover, harm, nodead] [harm, nodead] [] Spinning Fire Blossom',
	BUTTON5 = 's|Flying Serpent Kick',
	MOUSEWHEELUP = 's|Fists of Fury',
	MOUSEWHEELDOWN = 's|Rising Sun Kick',
	
	NUMPAD5 = 'm|/castsequence reset=15 Legacy of the Emperor, Legacy of the White Tiger',
}
oBindings:RegisterKeyBindings('Windwalker', bindings.base, monk, windwalker)
