-- Zeigt dauerhaft die aktuellen Koordinaten des Spielers oben rechts an.

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        local ped = PlayerPedId()
        local coords = GetEntityCoords(ped)

        local text = string.format("X: %.2f  Y: %.2f  Z: %.2f", coords.x, coords.y, coords.z)

        SetTextFont(4)
        SetTextScale(0.0, 0.5)
        SetTextColour(255, 255, 255, 255)
        SetTextOutline()
        SetTextEntry("STRING")
        AddTextComponentString(text)
        DrawText(0.78, 0.02)
    end
end)
