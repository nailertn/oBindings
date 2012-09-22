local _, bindings = ...

local priest = {
	MOUSEWHEELUP = 'm|/cast [@mouseover,help,nodead] [help,nodead] [@player] Flash Heal',
	MOUSEWHEELDOWN = 'm|/cast [@mouseover,help,nodead] [@target help,nodead] [@player] Binding Heal',
	
	F2 = 's|Desperate Prayer',
	F3 = 'm|/cast [@mouseover,help,nodead] [help,nodead] [@player] Renew',
	F4 = 'm|/cast [@mouseover,help,nodead] [help,nodead] [@player] Power Word: Shield',
	F6 = 's|Fade',
	F12 = 's|Dispersion',
	
	[0] = 's|Psychic Scream',
	[4] = 'm/cast [nochanneling] Mind Sear',
	R = 'm|/cast [nochanneling:Mind Flay] Mind Blast',
	A = 'm|/cast [nochanneling:Mind Flay] Shadow Word: Pain',
	D = 'm|/cast [nochanneling:Mind Flay] Mind Flay',
	F = 'm|/cast [nochanneling:Mind Flay] Devouring Plague',
	Y = 's|Vampiric Embrace',
	T = 's|Silence',
	X = 'm|/cast [nochanneling:Mind Flay] Mind Spike',
	C = 'm|/cast [nochanneling:Mind Flay] Vampiric Touch',
	
	HOME = 's|Shadowfiend',
	
	alt = {
		F1 = 's|Inner Will',
		F2 = 's|Inner Fire',
		[0] = 's|Void Tendrils',
		[1] = 's|Shadowform',
		X = 'm|/cast [nochanneling:Mind Flay] Shadow Word: Death',
	},
	
}
oBindings:RegisterKeyBindings('PRIEST', bindings.base, priest)