local continue = false

function MigrateIlleniumClothing(source)
    local allPlayerSkins = MySQL.query.await("SELECT * FROM playerskins WHERE active = 1")
    local migrated = 0

    for i = 1, #allPlayerSkins, 1 do
        TriggerClientEvent("nf-skin_migrate:client:illenium", source, allPlayerSkins[i], "playerskins")
        while not continue do
            Wait(10)
        end
        continue = false
        migrated = migrated + 1
    end

    lib.notify(source, {
        title = "Migration illenium",
        description = "Migrated " .. migrated .. " players",
        type = "success",
        position = "top-right",
    })
end

function MigrateIlleniumClothingOutfits(source)
    local allPlayerOutfits = MySQL.query.await("SELECT * FROM player_outfits")
    local migrated = 0

    for i = 1, #allPlayerOutfits, 1 do
        TriggerClientEvent("nf-skin_migrate:client:illenium_outfit", source, allPlayerOutfits[i], "player_outfits")
        while not continue do
            Wait(10)
        end
        continue = false
        migrated = migrated + 1
    end

    lib.notify(source, {
        title = "Migration illenium",
        description = "Migrated " .. migrated .. " players",
        type = "success",
        position = "top-right",
    })
end

RegisterNetEvent("nf-skin_migrate:server:illenium_done", function(citizenid, model, skin, type)
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

    lib.notify(_source, {
        title = "Migration illenium",
        description = "Player " .. citizenid .. " migrated",
        type = "success",
        position = "top-right",
    })
end)
