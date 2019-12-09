local updatebutsexy = update

function update(dt)
	updatebutsexy(dt)
	
	if player.species() == "human" and status.statusProperty("pat_noskin", 0) == 0 then
		status.addEphemeralEffect("pat_noskin", math.huge)
	end
end