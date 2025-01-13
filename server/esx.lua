local continue = false

function MigrateESX(source)
    local allPlayerSkins = MySQL.query.await("SELECT * FROM users")
    local migrated = 0

    for i = 1, #allPlayerSkins, 1 do
        lib.notify(source, {
            title = "Migration esx",
            description = "Player " ..
                allPlayerSkins[i].identifier .. " has invalid model: " .. allPlayerSkins[i].model,
            type = "error",
            position = "top-right",
        })

        TriggerClientEvent("nf-skin_migrate:client:esx", source, allPlayerSkins[i])
        while not continue do
            Wait(10)
        end
        continue = false
        migrated = migrated + 1
    end
end

RegisterNetEvent("nf-skin_migrate:server:esx_done", function(identifier, model, skin)
    local _source = source

    if not _source then
        return
    end

    MySQL.update.await('UPDATE `users` SET `skin` = ? WHERE `identifier` = ?', {
        model,
        json.encode(skin),
        identifier
    })

    continue = true
end)
