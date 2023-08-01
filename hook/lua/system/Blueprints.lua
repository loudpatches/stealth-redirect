do
	local OldModBlueprints = ModBlueprints
	function ModBlueprints(all_blueprints)
		OldModBlueprints(all_blueprints)
		
		local modConfig = {}
		for _, v in __active_mods do
			if v.uid == 'b8d941e131multiplier' then
				modConfig = v.config
				break
			end
		end
		
		if modConfig['Multiplier'] == '2' then
			for id, bp in all_blueprints.Unit do
				if (bp.Physics.MotionType or 'RULEUMT_None') == 'RULEUMT_None' then
					if type(bp.Defense.Health) == 'number' then
						bp.Defense.Health = bp.Defense.Health * 2
					end
					if type(bp.Defense.MaxHealth) == 'number' then
						bp.Defense.MaxHealth = bp.Defense.MaxHealth * 2
					end
					if type(bp.Defense.Shield.ShieldMaxHealth) == 'number' then
						bp.Defense.Shield.ShieldMaxHealth = bp.Defense.Shield.ShieldMaxHealth * 2
					end
				end
			end
		end
		
		if modConfig['Multiplier'] == '4' then
			for id, bp in all_blueprints.Unit do
				if (bp.Physics.MotionType or 'RULEUMT_None') == 'RULEUMT_None' then
					if type(bp.Defense.Health) == 'number' then
						bp.Defense.Health = bp.Defense.Health * 4
					end
					if type(bp.Defense.MaxHealth) == 'number' then
						bp.Defense.MaxHealth = bp.Defense.MaxHealth * 4
					end
					if type(bp.Defense.Shield.ShieldMaxHealth) == 'number' then
						bp.Defense.Shield.ShieldMaxHealth = bp.Defense.Shield.ShieldMaxHealth * 4
					end
				end
			end
		end
		
		if modConfig['Multiplier'] == '6' then
			for id, bp in all_blueprints.Unit do
				if (bp.Physics.MotionType or 'RULEUMT_None') == 'RULEUMT_None' then
					if type(bp.Defense.Health) == 'number' then
						bp.Defense.Health = bp.Defense.Health * 6
					end
					if type(bp.Defense.MaxHealth) == 'number' then
						bp.Defense.MaxHealth = bp.Defense.MaxHealth * 6
					end
					if type(bp.Defense.Shield.ShieldMaxHealth) == 'number' then
						bp.Defense.Shield.ShieldMaxHealth = bp.Defense.Shield.ShieldMaxHealth * 6
					end
				end
			end
		end
	end
end
