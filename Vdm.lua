-- OBFUSCATOR: SRHT OBFUSCATOR V2 https://www.srhdev.xyz/panel/sifrele/lua/public/

-- Discord Webhook URL
local burayaucurlogi = "WEBHOOK_HERE"


-- ARAC HASARINI 0 A CEKME  CLIENTE EKLEYIN EGER ISTIYORSANIZ --




--[[
Citizen.CreateThread(function()
    while true do
        N_0x4757f00bc6323cfe(-1553120962, 0.0) 
        Wait(0)
    end
end)
--]]




-- CARPMA ALGILAMA --
AddEventHandler('playerBeenHit', function(hitData, vehicle)
    if IsEntityAVehicle(vehicle) then
        local Trollsupheli = GetPlayerName(source)
        local aracmodel = GetDisplayNameFromVehicleModel(GetEntityModel(vehicle))
        local messageaq = "[SRHT_GUARD_V3] - [VDM] "..Trollsupheli .. "Şu araçla vurdu " .. aracmodel.."Vdm şüphesi var kontrol etmeniz önerilir"
        PerformHttpRequest(burayaucurlogi, function(err, text, headers) end, 'POST', json.encode({content = messageaq}), { ['Content-Type'] = 'application/json' })
    end
end)
