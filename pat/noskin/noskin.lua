function init()
  animator.setParticleEmitterActive("blood", true)
  animator.playSound("agony", -1)

  self.healthDrain = config.getParameter("healthDrain")
  self.pitchRange = config.getParameter("pitchRange")
end

local function randomInRange(range)
  return range[1] + (math.random() * (range[2] - range[1]))
end

function update(dt)
  animator.setParticleEmitterOffsetRegion("blood", mcontroller.boundBox())
  animator.setSoundPitch("agony", randomInRange(self.pitchRange))

  status.overConsumeResource("health", self.healthDrain * dt)
end

function uninit()
  animator.stopAllSounds("agony")
end
