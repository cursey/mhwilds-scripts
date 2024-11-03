log.info('[weapon_stay_big.lua] loaded')
local identity3f = Vector3f.new(1, 1, 1)
re.on_application_entry('PrepareRendering', function()
  -- Get the player character.
  local playman = sdk.get_managed_singleton('app.PlayerManager')
  if not playman then return end
  local me = playman:getMasterPlayer():get_Character()
  if not me then return end

  -- Scale the main weapon.
  local weapon = me:get_Weapon()
  if not weapon then return end
  weapon:get_GameObject():get_Transform():set_LocalScale(identity3f)

  -- Scale the sub weapon (scabards).
  weapon = me:get_SubWeapon()
  if not weapon then return end
  weapon:get_GameObject():get_Transform():set_LocalScale(identity3f)
end)
