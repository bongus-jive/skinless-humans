function init()
  animator.setParticleEmitterActive("blood", true)
  animator.playSound("agony", -1)

  self.healthDrain = config.getParameter("healthDrain")
end

function update(dt)
  animator.setParticleEmitterOffsetRegion("blood", mcontroller.boundBox())
  
  status.overConsumeResource("health", self.healthDrain * dt)
end

function uninit()
  animator.stopAllSounds("agony")
end
