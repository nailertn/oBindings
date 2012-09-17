local _, bindings = ...

bindings.base = {
	g6 = 'm|/reload',
	F6 = 'm|/s f6 nomod',
	F10 = 'm|/cast Abyssal Seahorse\n/cast [flyable] Invincible\n/cast Amani War Bear',
	
	W = 'MOVEFORWARD',
	D = 'MOVEBACKWARD',
	Q = 'STRAFELEFT',
	E = 'STRAFERIGHT',

	UP = 'MOVEFORWARD',
	DOWN = 'MOVEBACKWARD',
	LEFT = 'TURNLEFT',
	RIGHT = 'TURNRIGHT',

	MOUSE7 = 'JUMP',
	SPACE = 'TOGGLEAUTORUN',

	NUMPADDIVIDE = 'TOGGLERUN',

	ENTER = 'OPENCHAT',
	--['Û'] = 'REPLY',
	
	ctrl = {
		V = 'NAMEPLATES',
	},
	
	shift = {
		--['Û'] = 'REPLY2',
		TAB = 'TARGETPREVIOUSENEMY',
		a = 'm|/s shift a',
		g10 = 'm|/s shift g10',
	},
		
	TAB = 'TARGETNEARESTENEMY',
	
	NUMPADMINUS = 'TOGGLECHARACTER0',
	NUMPADPLUS = 'OPENALLBAGS',
	NUMPAD0 = 'TOGGLESPELLBOOK',
	NUMPADDECIMAL = 'TOGGLETALENTS',
	H = 'TOGGLECHARACTER4',
}

bindings.base = {
	g6 = 'm|/reload',
	
	F1 = 'm|/run ChatFrame1:AddMessage("nomod f1")',
	G1 = 'm|/run ChatFrame1:AddMessage("nomod g1")',
}

oBindings:RegisterKeyBindings('base', bindings.base)
