local _, bindings = ...

bindings.mana_potions = [[
/cast Alchemist's Rejuvenation
/cast Mythical Mana Potion
/cast Runic Mana Potion
/cast Super Mana Potion
/cast Major Mana Potion
/cast Superior Mana Potion
/cast Greater Mana Potion
/cast Mana Potion
/cast Lesser Mana Potion
/cast Minor Mana Potion
]]

bindings.healing_potions = [[
/cast Healthstone
/cast Alchemist's Rejuvenation
/cast Mythical Healing Potion
/cast Runic Healing Potion
/cast Super Healing Potion
/cast Major Healing Potion
/cast Superior Healing Potion
/cast Greater Healing Potion
/cast Healing Potion
/cast Lesser Healing Potion
/cast Minor Healing Potion
]]

bindings.bandages = [[
/cast Heavy Windwool Bandage
/cast Windwool Bandage
/cast Heavy Embersilk Bandage
/cast Embersilk Bandage
/cast Heavy Frostweave Bandage
/cast Frostweave Bandage
/cast Heavy Netherweave Bandage
/cast Netherweave Bandage
/cast Heavy Runecloth Bandage
/cast Runecloth Bandage
/cast Heavy Mageweave Bandage
/cast Mageweave Bandage
/cast Heavy Silk Bandage
/cast Silk Bandage
/cast Heavy Wool Bandage
/cast Wool Bandage
/cast Heavy Linen Bandage
/cast Linen Bandage
]]

bindings.racials = [[
/cast Blood Fury
/cast Will of the Forsaken
/cast War Stomp
/cast Berserking
/cast Arcane Torrent
/cast Rocket 

/cast Every Man For Himself
/cast Stoneform
/cast Shadowmeld
/cast Escape Artist
/cast Gift of the Naaru
/cast Darkflight
]]

bindings.drinks = [[
/cast Conjured Mana Buns
/cast Honeymint Tea
/cast Pearl Milk Tea
]]

bindings.food = [[
/cast Conjured Mana Buns
/cast Salted Vension
]]

bindings.base = {
	G4 = 'm|/reload',
	G6 = 'EXTRAACTIONBUTTON1',
	G7 = 'm|' .. bindings.mana_potions,
	G8 = 'i|Potion of Speed',
	G9 = 'm|' .. bindings.healing_potions,
	G10 = 'm|' .. bindings.bandages,
	G11 = 'i|Hearthstone',
	G12 = 'm|' .. bindings.racials,
	G13 = 'm|' .. bindings.drinks,
	G14 = [[m|
/castrandom [nomounted, swimming] Abyssal Seahorse; [nomounted, nomod, flyable] Invincible, Icebound Frostbrood Vanquisher, Bloodbathed Frostbrood Vanquisher, Ironbound Proto-Drake, Rusted Proto-Drake, Purple Riding Nether Ray; Amani War Bear, Crusader's Black Warhorse, Running Wild
/dismount
]],	

	G15 = 'm|/use 13',
	G16 = 'm|' .. bindings.food,
	G17 = [[m|
/cast [nomounted] Amani War Bear
/dismount
]],
	G18 = 'm|/use 14',
	
	ESCAPE = 'TOGGLEGAMEMENU',
	
	F1 = 'MULTIACTIONBAR1BUTTON1',
	F2 = 'MULTIACTIONBAR1BUTTON2',
	F3 = 'MULTIACTIONBAR1BUTTON3',
	F4 = 'MULTIACTIONBAR1BUTTON4',
	F5 = 'MULTIACTIONBAR1BUTTON5',
	F6 = 'MULTIACTIONBAR1BUTTON6',
	F7 = 'MULTIACTIONBAR1BUTTON7',
	F8 = 'MULTIACTIONBAR1BUTTON8',
	F9 = 'MULTIACTIONBAR1BUTTON9',
	F10 = 'MULTIACTIONBAR1BUTTON10',
	F11 = 'MULTIACTIONBAR1BUTTON11',
	F12 = 'MULTIACTIONBAR1BUTTON12',
	
	PRINTSCREEN = 'SCREENSHOT',
	
	[0] = 'ACTIONBUTTON1',
	[1] = 'ACTIONBUTTON2',
	[2] = 'ACTIONBUTTON3',
	[3] = 'ACTIONBUTTON4',
	[4] = 'ACTIONBUTTON5',
	[5] = 'ACTIONBUTTON6',
	[6] = 'ACTIONBUTTON7',
	[7] = 'ACTIONBUTTON8',
	[8] = 'ACTIONBUTTON9',
	[9] = 'ACTIONBUTTON10',
	['Ö'] = '',
	['Ü'] = '',
	['Ó'] = '',
	BACKSPACE = '',
	
	TAB = 'TARGETNEARESTENEMY',
	Q = 'STRAFELEFT',
	W = 'MOVEFORWARD',
	E = 'STRAFERIGHT',
	R = '',
	T = '',
	Z = 'TOGGLEACHIEVEMENT',
	U = '',
	I = 'TOGGLELFGPARENT',
	O = 'TOGGLEFRIENDSTAB',
	P = 'TOGGLEMOUNTJOURNAL',
	['Õ'] = '',
	['Ú'] = '',
	['ű'] = 'REPLY',
	
	A = '',
	S = 'MOVEBACKWARD',
	D = '',
	F = '',
	G = '',
	H = 'TOGGLECHARACTER4',
	J = 'TOGGLEGUILDTAB',
	K = 'TOGGLEENCOUNTERJOURNAL',
	L = 'TOGGLEQUESTLOG',
	['É'] = '',
	['Á'] = '',
	ENTER = 'OPENCHAT',
	
	Y = '',
	X = '',
	C = '',
	V = '',
	B = '',
	N = '',
	M = 'TOGGLEWORLDMAP',
	[','] = '',
	['.'] = '',
	['-'] = '',
	
	SPACE = 'TOGGLEAUTORUN',
	
	INSERT = '',
	DELETE = '',
	HOME = '',
	END = '',
	PAGEUP = '',
	PAGEDOWN = '',
	
	UP = 'MOVEFORWARD',
	DOWN = 'MOVEBACKWARD',
	LEFT = 'TURNLEFT',
	RIGHT = 'TURNRIGHT',
	
	NUMPADDIVIDE = 'TOGGLERUN',
	NUMPADMULTIPLY = '',
	NUMPADMINUS = 'TOGGLECHARACTER0',
	NUMPADPLUS = 'OPENALLBAGS',
	NUMPADDECIMAL = 'TOGGLETALENTS',
	NUMPAD0 = 'TOGGLESPELLBOOK',
	
	NUMPAD1 = 's|Mass Resurrection',
	NUMPAD2 = '',
	NUMPAD3 = '',
	NUMPAD4 = '',
	NUMPAD5 = '',
	NUMPAD6 = '',
	NUMPAD7 = '',
	NUMPAD8 = '',
	NUMPAD9 = '',
	
	BUTTON3 = '',
	BUTTON4 = '',
	BUTTON5 = '',
	BUTTON6 = '',
	BUTTON7 = 'JUMP',
	BUTTON8 = '',

	ctrl = {
		V = 'NAMEPLATES',
	},
	
	shift = {
		S = '',
		['ű'] = 'REPLY2',
		TAB = 'TARGETPREVIOUSENEMY',
	},
	
	['ctrl-shift'] = {
		NUMPADMINUS = 'MASTERVOLUMEDOWN',
		NUMPADPLUS = 'MASTERVOLUMEUP',
		MOUSEWHEELUP = 'CAMERAZOOMIN',
		MOUSEWHEELDOWN = 'CAMERAZOOMOUT',
		Z = 'TOGGLEUI',
		S = 'TOGGLESOUND',
		V = 'ALLNAMEPLATES',
		M = 'TOGGLEMUSIC',
	},
}
oBindings:RegisterKeyBindings('base', bindings.base)
