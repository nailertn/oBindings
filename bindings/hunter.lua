local _, bindings = ...
local no_error = bindings.no_error

local hunter = {
	F1 = 's|Snake Trap',
	F2 = 's|Explosive Trap',
	F3 = 's|Ice Trap',
	F4 = 's|Freezing Trap',
	F5 = "s|Master's Call",
	F6 = 's|Feign Death',
	F7 = 's|Exhilaration',
	F8 = 'm|/cast [nopet] [@pet,dead] Heart of the Phoenix\n/cast [nopet] [@pet,dead] Revive Pet\n/cast Mend Pet',
	F9 = 's|Readiness',
	
	[0] = 's|Disengage',
	[1] = 's|Arcane Shot',
	[2] = 's|Steady Shot',
	[4] = 's|Concussive Shot',
	[5] = 's|Serpent Sting',
	
	R = 'm|/cast Silencing Shot\n/cast Wyvern Sting\n/cast Binding Shot',
	A = 's|Deterrence',
	D = 's|Scatter Shot',
	F = 'm|/cast Glaive Toss\n/cast Powershot\n/cast Barrage',
	Y = 's|Widow Venom',
	X = 's|Multi-Shot',
	C = 's|Kill Shot',
	
	BUTTON3 = 'm|/petmoveto',
	BUTTON4 = 'm|/cast Aspect of the Cheetah\n/cast Aspect of the Pack',
	BUTTON5 = 'm|/cast Aspect of the Hawk\n/cast Aspect of the Fox',
	BUTTON6 = 'm|/cast [@mouseover,help,nodead] [help,nodead] [@player] Misdirection',
	BUTTON8 = 'm|/cast [@mouseover,harm,dead] [harm,dead] Fetch',
	MOUSEWHEELUP = 'm|/petattack [pet]\n/cast [nopet] Call Pet 1',
	MOUSEWHEELDOWN = 'm|/petfollow [pet]\n/cast [nopet] Call Pet 2',
	
	alt = {
		F1 = 's|Rapid Fire',
		F2 = 's|A Murder of Crows',
		F3 = 's|Stampede',
		F8 = 's|Revive Pet',
		
		[0] = 's|Camouflage',
		[1] = 'm|/cast Fervor\n/cast Dire Beast',
		[2] = 's|Flare',
		[3] = "s|Hunter's Mark",
		
		Q = 's|Tranquilizing Shot',
		W = 's|Scare Beast',
		E = 's|Distracting Shot',
		
		BUTTON3 = 's|Dismiss Pet',
		BUTTON4 = 's|Aspect of the Pack',
		BUTTON5 = 's|Aspect of the Fox',
		BUTTON6 = 'm|/cast [@mouseover,help,nodead] [help,nodead] [@player] Misdirection',
		BUTTON8 = 'm|/cast [@mouseover,harm,dead] [harm,dead] Fetch',
		MOUSEWHEELUP = 'm|/petassist',
		MOUSEWHEELDOWN = 'm|/petpassive',
	},
}
oBindings:RegisterKeyBindings('HUNTER', bindings.base, hunter)

local survival = {
	[3] = 's|Explosive Shot',
	T = 's|Black Arrow',
}
oBindings:RegisterKeyBindings('Survival', bindings.base, hunter, survival)

local marksmanship = {
	[3] = 's|Aimed Shot',
	T = 's|Chimera Shot',
}
oBindings:RegisterKeyBindings('Marksmanship', bindings.base, hunter, marksmanship)
