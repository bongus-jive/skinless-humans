function init()
	animator.setParticleEmitterActive("blood", true)
	animator.playSound("agony", -1)
end

function update(dt)
	if status.statusProperty("pat_noskin", 0) == 1 then
		effect.expire()
	end

	status.overConsumeResource("health", 0.05)
end

function uninit()
	animator.setParticleEmitterActive("blood", false)
	animator.stopAllSounds("agony")
end