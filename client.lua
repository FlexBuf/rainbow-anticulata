Citizen.CreateThread(function()
    while true do
        local sleep = 1500
        if (not IsPedArmed(PlayerPedId(), 1)) and (GetSelectedPedWeapon(PlayerPedId()) ~= `WEAPON_UNARMED`) then
            sleep = 0
            DisableControlAction(0, 140, true) 
            DisableControlAction(0, 141, true) 
            DisableControlAction(0, 142, true) 
        end
        Citizen.Wait(sleep)
    end
end)