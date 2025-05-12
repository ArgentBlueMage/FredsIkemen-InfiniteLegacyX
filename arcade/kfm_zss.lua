if matchno() == 1 and not continue() then
	launchStoryboard('chars/kfm_zss/intro.def')
end

if matchno() == 1 then
	local ok = launchFight{
		p2char = {"dan_pots"},
		p2teammode = "single",
		ai = 0.75
	}
	if not ok then return end
end
if matchno() == 2 then
	local ok = launchFight{
		p2char = {"takumah", "goroh"},
		p2teammode = "simul",
		ai = 4
	}
	if not ok then return end
end

if matchno() == 3 then
	local ok = launchFight{
		p2char = {"ryu_pots"},
		p2teammode = "single",
		ai = 1
	}
	if not ok then return end
end

if matchno() == 4 then
	local ok = launchFight{
		p2char = {"shingouki_pots"},
		p2teammode = "single",
		ai = 1
	}
	if not ok then return end
end

if stats.modes.arcade.clearcount.kfm_zss >= 2 then
	if matchno() == 5 then
		local ok = launchFight{
			p2char = {"suave"},
			p2teammode = "single",
			stage = "stages/kfm.def"
		}
		if not ok then return end
	end
	launchStoryboard('chars/kfm_zss/ending.def')
else
	if matchno() == 5 then
		local ok = launchFight{
			p2char = {"ekfm2009"},
			p2teammode = "single",
			stage = "stages/kfm.def"
		}
		if not ok then return end
	end
end
launchStoryboard('chars/kfm_zss/ending.def')

setMatchNo(-1)