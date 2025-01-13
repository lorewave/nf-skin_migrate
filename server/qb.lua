local continue = false

function MigrateQBClothing(source)
    local allPlayerSkins = MySQL.query.await("SELECT * FROM playerskins WHERE active = 1")
    local migrated = 0

    for i = 1, #allPlayerSkins, 1 do
        if not tonumber(allPlayerSkins[i].model) then
            lib.notify(source, {
                title = "Migration qb-clothing",
                description = "Player " ..
                    allPlayerSkins[i].citizenid .. " has invalid model: " .. allPlayerSkins[i].model,
                type = "error",
                position = "top-right",
            })
        else
            TriggerClientEvent("nf-skin_migrate:client:qb-clothing", source, allPlayerSkins[i], "playerskins")
            while not continue do
                Wait(10)
            end
            continue = false
            migrated = migrated + 1
        end
    end
end

function MigrateQBClothingOutfits(source)
    local allPlayerSkins = MySQL.query.await("SELECT * FROM player_outfits")
    local migrated = 0

    for i = 1, #allPlayerSkins, 1 do
        if not tonumber(allPlayerSkins[i].model) then
            lib.notify(source, {
                title = "Migration qb-clothing",
                description = "Player " ..
                    allPlayerSkins[i].citizenid .. " has invalid model: " .. allPlayerSkins[i].model,
                type = "error",
                position = "top-right",
            })
        else
            TriggerClientEvent("nf-skin_migrate:client:qb-clothing", source, allPlayerSkins[i], "player_outfits")
            while not continue do
                Wait(10)
            end
            continue = false
            migrated = migrated + 1
        end
    end
end

RegisterNetEvent("nf-skin_migrate:server:qb-clothing_done", function(citizenid, model, skin, type)
    local _source = source

    if not _source then
        return
    end

    MySQL.update.await('UPDATE `' .. type .. '` SET `model` = ?, `skin` = ? WHERE `citizenid` = ?', {
        model,
        json.encode(skin),
        citizenid
    })

    continue = true
end)
