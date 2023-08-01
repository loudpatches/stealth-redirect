--purely hook based HAHA
do

  local MissileRedirect = import('/lua/defaultantiprojectile.lua').MissileRedirect
  local bp = __blueprints['url0303'].Defense.AntiMissile

  local baseunit = import('/units/URL0306/URL0306_Script.lua').URL0306

  baseunit = URL0306
  oldOnStopBeingBuilt = baseunit.OnStopBeingBuilt
  addMissileRedirect =
    function(self,builder,layer)
      local antiMissile = MissileRedirect {
        Owner = self,
        Radius = bp.Radius,
        AttachBone = 'AttachPoint',
        RedirectRateOfFire = bp.RedirectRateOfFire
      }

      self.Trash:Add(antiMissile)
      self.UnitComplete = true
    end

  baseunit.OnStopBeingBuilt =
    function(self,builder,layer)
      oldOnStopBeingBuilt(self,builder,layer)
      addMissileRedirect(self,builder,layer)
    end
end

