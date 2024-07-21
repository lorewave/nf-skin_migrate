lib.addCommand("migration", {
    help = "Migrate skins",
    params = {
        {
            name = "resourceName",
            help = "[qb, illenium, nf]",
            type = "string",
        },
        {
            name = "skinsType",
            help = "[skins, outfits]",
            type = "string",
        }
    },
    restricted = "group.god"
}, function(source, args)
    local resourceName = args.resourceName
    local skinsType = args.skinsType

    if resourceName == "qb" then
        if skinsType == "skins" then
            CreateThread(function()
                MigrateQBClothing(source)
            end)
        elseif skinsType == "outfits" then
            CreateThread(function()
                MigrateQBClothingOutfits(source)
            end)
        end
    elseif resourceName == "illenium" then
        if skinsType == "skins" then
            CreateThread(function()
                MigrateIlleniumClothing(source)
            end)
        elseif skinsType == "outfits" then
            CreateThread(function()
                MigrateIlleniumClothingOutfits(source)
            end)
        end
    elseif resourceName == "nf" then
        if skinsType == "skins" then
            CreateThread(function()
                MigrateNFClothing(source)
            end)
        elseif skinsType == "outfits" then
            CreateThread(function()
                MigrateNFClothingOutfits(source)
            end)
        end
    end
end)
