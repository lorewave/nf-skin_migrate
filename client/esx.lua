RegisterNetEvent('nf-skin_migrate:client:esx', function(playerSkin)
    local model = playerSkin.model
    model = model ~= nil and tonumber(model) or "mp_m_freemode_01"
    Citizen.CreateThread(function()
        lib.requestModel(model, 1000)
        SetPlayerModel(cache.playerId, model)
        Wait(150)
        SetPedComponentVariation(cache.ped, 0, 0, 0, 2)
        ESX_Clothing(playerSkin, cache.ped, function(skin)
            TriggerServerEvent("nf-skin_migrate:server:esx_done",
                playerSkin.citizenid,
                exports['nf-skin']:GetPedHashName(cache.ped),
                skin
            )
            exports['nf-skin']:SetPedAppearance(cache.ped, exports['nf-skin']:GetConfigSkinData())
        end)
        SetModelAsNoLongerNeeded(model)
    end)
end)

function ApplySkin(skinData, cb)
    local playerPed = PlayerPedId()

    local face_weight = (skinData["face_md_weight"] / 100) + 0.0
    local skin_weight = (skinData["skin_md_weight"] / 100) + 0.0
    SetPedHeadBlendData(playerPed, skinData["mom"], skinData["dad"], 0, skinData["mom"], skinData["dad"], 0,
        face_weight, skin_weight, 0.0, false)

    SetPedFaceFeature(playerPed, 0, (skinData["nose_1"] / 10) + 0.0)                                 -- Nose Width
    SetPedFaceFeature(playerPed, 1, (skinData["nose_2"] / 10) + 0.0)                                 -- Nose Peak Height
    SetPedFaceFeature(playerPed, 2, (skinData["nose_3"] / 10) + 0.0)                                 -- Nose Peak Length
    SetPedFaceFeature(playerPed, 3, (skinData["nose_4"] / 10) + 0.0)                                 -- Nose Bone Height
    SetPedFaceFeature(playerPed, 4, (skinData["nose_5"] / 10) + 0.0)                                 -- Nose Peak Lowering
    SetPedFaceFeature(playerPed, 5, (skinData["nose_6"] / 10) + 0.0)                                 -- Nose Bone Twist
    SetPedFaceFeature(playerPed, 6, (skinData["eyebrows_5"] / 10) + 0.0)                             -- Eyebrow height
    SetPedFaceFeature(playerPed, 7, (skinData["eyebrows_6"] / 10) + 0.0)                             -- Eyebrow depth
    SetPedFaceFeature(playerPed, 8, (skinData["cheeks_1"] / 10) + 0.0)                               -- Cheekbones Height
    SetPedFaceFeature(playerPed, 9, (skinData["cheeks_2"] / 10) + 0.0)                               -- Cheekbones Width
    SetPedFaceFeature(playerPed, 10, (skinData["cheeks_3"] / 10) + 0.0)                              -- Cheeks Width
    SetPedFaceFeature(playerPed, 11, (skinData["eye_squint"] / 10) + 0.0)                            -- Eyes squint
    SetPedFaceFeature(playerPed, 12, (skinData["lip_thickness"] / 10) + 0.0)                         -- Lip Fullness
    SetPedFaceFeature(playerPed, 13, (skinData["jaw_1"] / 10) + 0.0)                                 -- Jaw Bone Width
    SetPedFaceFeature(playerPed, 14, (skinData["jaw_2"] / 10) + 0.0)                                 -- Jaw Bone Length
    SetPedFaceFeature(playerPed, 15, (skinData["chin_1"] / 10) + 0.0)                                -- Chin Height
    SetPedFaceFeature(playerPed, 16, (skinData["chin_2"] / 10) + 0.0)                                -- Chin Length
    SetPedFaceFeature(playerPed, 17, (skinData["chin_3"] / 10) + 0.0)                                -- Chin Width
    SetPedFaceFeature(playerPed, 18, (skinData["chin_4"] / 10) + 0.0)                                -- Chin Hole Size
    SetPedFaceFeature(playerPed, 19, (skinData["neck_thickness"] / 10) + 0.0)                        -- Neck Thickness

    SetPedHairColor(playerPed, skinData["hair_color_1"], skinData["hair_color_2"])                   -- Hair Color
    SetPedHeadOverlay(playerPed, 3, skinData["age_1"], (skinData["age_2"] / 10) + 0.0)               -- Age + opacity
    SetPedHeadOverlay(playerPed, 0, skinData["blemishes_1"], (skinData["blemishes_2"] / 10) + 0.0)   -- Blemishes + opacity
    SetPedHeadOverlay(playerPed, 1, skinData["beard_1"], (skinData["beard_2"] / 10) + 0.0)           -- Beard + opacity
    SetPedEyeColor(playerPed, skinData["eye_color"])                                                 -- Eyes color
    SetPedHeadOverlay(playerPed, 2, skinData["eyebrows_1"], (skinData["eyebrows_2"] / 10) + 0.0)     -- Eyebrows + opacity
    SetPedHeadOverlay(playerPed, 4, skinData["makeup_1"], (skinData["makeup_2"] / 10) + 0.0)         -- Makeup + opacity
    SetPedHeadOverlay(playerPed, 8, skinData["lipstick_1"], (skinData["lipstick_2"] / 10) + 0.0)     -- Lipstick + opacity
    SetPedComponentVariation(playerPed, 2, skinData["hair_1"], skinData["hair_2"], 2)                -- Hair
    SetPedHeadOverlayColor(playerPed, 1, 1, skinData["beard_3"], skinData["beard_4"])                -- Beard Color
    SetPedHeadOverlayColor(playerPed, 2, 1, skinData["eyebrows_3"], skinData["eyebrows_4"])          -- Eyebrows Color
    SetPedHeadOverlayColor(playerPed, 4, 2, skinData["makeup_3"], skinData["makeup_4"])              -- Makeup Color
    SetPedHeadOverlayColor(playerPed, 8, 1, skinData["lipstick_3"], skinData["lipstick_4"])          -- Lipstick Color
    SetPedHeadOverlay(playerPed, 5, skinData["blush_1"], (skinData["blush_2"] / 10) + 0.0)           -- Blush + opacity
    SetPedHeadOverlayColor(playerPed, 5, 2, skinData["blush_3"])                                     -- Blush Color
    SetPedHeadOverlay(playerPed, 6, skinData["complexion_1"], (skinData["complexion_2"] / 10) + 0.0) -- Complexion + opacity
    SetPedHeadOverlay(playerPed, 7, skinData["sun_1"], (skinData["sun_2"] / 10) + 0.0)               -- Sun Damage + opacity
    SetPedHeadOverlay(playerPed, 9, skinData["moles_1"], (skinData["moles_2"] / 10) + 0.0)           -- Moles/Freckles + opacity
    SetPedHeadOverlay(playerPed, 10, skinData["chest_1"], (skinData["chest_2"] / 10) + 0.0)          -- Chest Hair + opacity
    SetPedHeadOverlayColor(playerPed, 10, 1, skinData["chest_3"])                                    -- Torso Color

    if skinData["bodyb_1"] == -1 then
        SetPedHeadOverlay(playerPed, 11, 255, (skinData["bodyb_2"] / 10) + 0.0) -- Body Blemishes + opacity
    else
        SetPedHeadOverlay(playerPed, 11, skinData["bodyb_1"], (skinData["bodyb_2"] / 10) + 0.0)
    end

    if skinData["bodyb_3"] == -1 then
        SetPedHeadOverlay(playerPed, 12, 255, (skinData["bodyb_4"] / 10) + 0.0)
    else
        SetPedHeadOverlay(playerPed, 12, skinData["bodyb_3"], (skinData["bodyb_4"] / 10) + 0.0) -- Blemishes 'added body effect' + opacity
    end

    if skinData["ears_1"] == -1 then
        ClearPedProp(playerPed, 2)
    else
        SetPedPropIndex(playerPed, 2, skinData["ears_1"], skinData["ears_2"], 2) -- Ears Accessories
    end

    SetPedComponentVariation(playerPed, 8, skinData["tshirt_1"], skinData["tshirt_2"], 2)  -- Tshirt
    SetPedComponentVariation(playerPed, 11, skinData["torso_1"], skinData["torso_2"], 2)   -- torso parts
    SetPedComponentVariation(playerPed, 3, skinData["arms"], skinData["arms_2"], 2)        -- Arms
    SetPedComponentVariation(playerPed, 10, skinData["decals_1"], skinData["decals_2"], 2) -- decals
    SetPedComponentVariation(playerPed, 4, skinData["pants_1"], skinData["pants_2"], 2)    -- pants
    SetPedComponentVariation(playerPed, 6, skinData["shoes_1"], skinData["shoes_2"], 2)    -- shoes
    SetPedComponentVariation(playerPed, 1, skinData["mask_1"], skinData["mask_2"], 2)      -- mask
    SetPedComponentVariation(playerPed, 9, skinData["bproof_1"], skinData["bproof_2"], 2)  -- bulletproof
    SetPedComponentVariation(playerPed, 7, skinData["chain_1"], skinData["chain_2"], 2)    -- chain
    SetPedComponentVariation(playerPed, 5, skinData["bags_1"], skinData["bags_2"], 2)      -- Bag

    if skinData["helmet_1"] == -1 then
        ClearPedProp(playerPed, 0)
    else
        SetPedPropIndex(playerPed, 0, skinData["helmet_1"], skinData["helmet_2"], 2) -- Helmet
    end

    if skinData["glasses_1"] == -1 then
        ClearPedProp(playerPed, 1)
    else
        SetPedPropIndex(playerPed, 1, skinData["glasses_1"], skinData["glasses_2"], 2) -- Glasses
    end

    if skinData["watches_1"] == -1 then
        ClearPedProp(playerPed, 6)
    else
        SetPedPropIndex(playerPed, 6, skinData["watches_1"], skinData["watches_2"], 2) -- Watches
    end

    if skinData["bracelets_1"] == -1 then
        ClearPedProp(playerPed, 7)
    else
        SetPedPropIndex(playerPed, 7, skinData["bracelets_1"], skinData["bracelets_2"], 2) -- Bracelets
    end

    local skin = exports['nf-skin']:GetPedAppearance(playerPed)

    cb(skin)
end
