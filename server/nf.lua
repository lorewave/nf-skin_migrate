local continue = false

function MigrateNFClothing(source)
    local allPlayerSkins = MySQL.query.await("SELECT * FROM `nf-skins`")
    local migrated = 0

    for i = 1, #allPlayerSkins, 1 do
        TriggerClientEvent("nf-skin_migrate:client:nf-skin", source, {
            citizenid = allPlayerSkins[i].citizenid,
            model = allPlayerSkins[i].model,
            skin = {
                appearance = json.decode(allPlayerSkins[i].appearance),
                clothes = json.decode(allPlayerSkins[i].clothes),
                tattoos = json.decode(allPlayerSkins[i].tattoos),
            }
        }, "playerskins")
        while not continue do
            Wait(10)
        end
        continue = false
        migrated = migrated + 1
    end

    lib.notify(source, {
        title = "Migration nf-skin",
        description = "Migrated " .. migrated .. " players",
        type = "success",
        position = "top-right",
    })
end

function MigrateNFClothingOutfits(source)
    local allPlayerSkins = MySQL.query.await("SELECT * FROM `nf-outfits`")
    local migrated = 0

    for i = 1, #allPlayerSkins, 1 do
        TriggerClientEvent("nf-skin_migrate:client:nf-skin", source, {
            citizenid = allPlayerSkins[i].citizenid,
            model = allPlayerSkins[i].model,
            outfit_name = allPlayerSkins[i].outfit_name,
            skin = {
                clothes = json.decode(allPlayerSkins[i].clothes),
            }
        }, "player_outfits")
        while not continue do
            Wait(10)
        end
        continue = false
        migrated = migrated + 1
    end

    lib.notify(source, {
        title = "Migration qb-clothing",
        description = "Migrated " .. migrated .. " players",
        type = "success",
        position = "top-right",
    })
end

RegisterNetEvent("nf-skin_migrate:server:nf-skin_done", function(citizenid, model, skin, type, outfitname)
    local _source = source

    if not _source then
        return
    end

    if type == "playerskins" then
        MySQL.insert.await('INSERT INTO `' .. type .. '` (citizenid, model, skin) VALUES (?, ?, ?)', {
            citizenid,
            model,
            json.encode(skin),
        })
    elseif type == "player_outfits" then
        MySQL.insert.await('INSERT INTO `' .. type .. '` (citizenid, model, outfitname, skin) VALUES (?, ?, ?, ?)', {
            citizenid,
            model,
            outfitname,
            json.encode(skin),
        })
    end

    continue = true

    lib.notify(_source, {
        title = "Migration nf-skin",
        description = "Player " .. citizenid .. " migrated",
        type = "success",
        position = "top-right",
    })
end)