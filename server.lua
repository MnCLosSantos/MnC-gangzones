local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('mnc:rewardForPedKill', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player then
        Player.Functions.AddMoney('bank', 1000, "Gang Ped Kill Reward")
        TriggerClientEvent('ox_lib:notify', src, {
            title = 'MnC',
            description = 'You received $1000 for eliminating a gang member.',
            type = 'success',
            position = 'top',
            duration = 5000
        })
    end
end)