function activate(fireMode, shiftHeld)
	if fireMode == "primary" then
		status.setStatusProperty("pat_noskin", 1)
	elseif fireMode == "alt" then
		status.setStatusProperty("pat_noskin", 0)
	end
end