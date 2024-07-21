constants = {}
constants.PED_COMPONENTS_IDS = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11 }
constants.PED_PROPS_IDS = { 0, 1, 2, 6, 7 }

constants.FACE_FEATURES = {
    "noseWidth",
    "nosePeakHigh",
    "nosePeakSize",
    "noseBoneHigh",
    "nosePeakLowering",
    "noseBoneTwist",
    "eyeBrownHigh",
    "eyeBrownForward",
    "cheeksBoneHigh",
    "cheeksBoneWidth",
    "cheeksWidth",
    "eyesOpening",
    "lipsThickness",
    "jawBoneWidth",
    "jawBoneBackSize",
    "chinBoneLowering",
    "chinBoneLenght",
    "chinBoneSize",
    "chinHole",
    "neckThickness",
}

constants.HEAD_OVERLAYS = {
    "blemishes",
    "beard",
    "eyebrows",
    "ageing",
    "makeUp",
    "blush",
    "complexion",
    "sunDamage",
    "lipstick",
    "moleAndFreckles",
    "chestHair",
    "bodyBlemishes",
}

-- Thanks to rootcause for the eye colors names and hair decorations hashes.
constants.EYE_COLORS = {
    "Green",
    "Emerald",
    "Light Blue",
    "Ocean Blue",
    "Light Brown",
    "Dark Brown",
    "Hazel",
    "Dark Gray",
    "Light Gray",
    "Pink",
    "Yellow",
    "Purple",
    "Blackout",
    "Shades of Gray",
    "Tequila Sunrise",
    "Atomic",
    "Warp",
    "ECola",
    "Space Ranger",
    "Ying Yang",
    "Bullseye",
    "Lizard",
    "Dragon",
    "Extra Terrestrial",
    "Goat",
    "Smiley",
    "Possessed",
    "Demon",
    "Infected",
    "Alien",
    "Undead",
    "Zombie",
}

constants.HAIR_DECORATIONS = {
    male = {
        [0] = { `mpbeach_overlays`, `FM_Hair_Fuzz` },
        [1] = { `multiplayer_overlays`, `NG_M_Hair_001` },
        [2] = { `multiplayer_overlays`, `NG_M_Hair_002` },
        [3] = { `multiplayer_overlays`, `NG_M_Hair_003` },
        [4] = { `multiplayer_overlays`, `NG_M_Hair_004` },
        [5] = { `multiplayer_overlays`, `NG_M_Hair_005` },
        [6] = { `multiplayer_overlays`, `NG_M_Hair_006` },
        [7] = { `multiplayer_overlays`, `NG_M_Hair_007` },
        [8] = { `multiplayer_overlays`, `NG_M_Hair_008` },
        [9] = { `multiplayer_overlays`, `NG_M_Hair_009` },
        [10] = { `multiplayer_overlays`, `NG_M_Hair_013` },
        [11] = { `multiplayer_overlays`, `NG_M_Hair_002` },
        [12] = { `multiplayer_overlays`, `NG_M_Hair_011` },
        [13] = { `multiplayer_overlays`, `NG_M_Hair_012` },
        [14] = { `multiplayer_overlays`, `NG_M_Hair_014` },
        [15] = { `multiplayer_overlays`, `NG_M_Hair_015` },
        [16] = { `multiplayer_overlays`, `NGBea_M_Hair_000` },
        [17] = { `multiplayer_overlays`, `NGBea_M_Hair_001` },
        [18] = { `multiplayer_overlays`, `NGBus_M_Hair_000` },
        [19] = { `multiplayer_overlays`, `NGBus_M_Hair_001` },
        [20] = { `multiplayer_overlays`, `NGHip_M_Hair_000` },
        [21] = { `multiplayer_overlays`, `NGHip_M_Hair_001` },
        [22] = { `multiplayer_overlays`, `NGInd_M_Hair_000` },
        [24] = { `mplowrider_overlays`, `LR_M_Hair_000` },
        [25] = { `mplowrider_overlays`, `LR_M_Hair_001` },
        [26] = { `mplowrider_overlays`, `LR_M_Hair_002` },
        [27] = { `mplowrider_overlays`, `LR_M_Hair_003` },
        [28] = { `mplowrider2_overlays`, `LR_M_Hair_004` },
        [29] = { `mplowrider2_overlays`, `LR_M_Hair_005` },
        [30] = { `mplowrider2_overlays`, `LR_M_Hair_006` },
        [31] = { `mpbiker_overlays`, `MP_Biker_Hair_000_M` },
        [32] = { `mpbiker_overlays`, `MP_Biker_Hair_001_M` },
        [33] = { `mpbiker_overlays`, `MP_Biker_Hair_002_M` },
        [34] = { `mpbiker_overlays`, `MP_Biker_Hair_003_M` },
        [35] = { `mpbiker_overlays`, `MP_Biker_Hair_004_M` },
        [36] = { `mpbiker_overlays`, `MP_Biker_Hair_005_M` },
        [37] = { `multiplayer_overlays`, `NG_M_Hair_001` },
        [38] = { `multiplayer_overlays`, `NG_M_Hair_002` },
        [39] = { `multiplayer_overlays`, `NG_M_Hair_003` },
        [40] = { `multiplayer_overlays`, `NG_M_Hair_004` },
        [41] = { `multiplayer_overlays`, `NG_M_Hair_005` },
        [42] = { `multiplayer_overlays`, `NG_M_Hair_006` },
        [43] = { `multiplayer_overlays`, `NG_M_Hair_007` },
        [44] = { `multiplayer_overlays`, `NG_M_Hair_008` },
        [45] = { `multiplayer_overlays`, `NG_M_Hair_009` },
        [46] = { `multiplayer_overlays`, `NG_M_Hair_013` },
        [47] = { `multiplayer_overlays`, `NG_M_Hair_002` },
        [48] = { `multiplayer_overlays`, `NG_M_Hair_011` },
        [49] = { `multiplayer_overlays`, `NG_M_Hair_012` },
        [50] = { `multiplayer_overlays`, `NG_M_Hair_014` },
        [51] = { `multiplayer_overlays`, `NG_M_Hair_015` },
        [52] = { `multiplayer_overlays`, `NGBea_M_Hair_000` },
        [53] = { `multiplayer_overlays`, `NGBea_M_Hair_001` },
        [54] = { `multiplayer_overlays`, `NGBus_M_Hair_000` },
        [55] = { `multiplayer_overlays`, `NGBus_M_Hair_001` },
        [56] = { `multiplayer_overlays`, `NGHip_M_Hair_000` },
        [57] = { `multiplayer_overlays`, `NGHip_M_Hair_001` },
        [58] = { `multiplayer_overlays`, `NGInd_M_Hair_000` },
        [59] = { `mplowrider_overlays`, `LR_M_Hair_000` },
        [60] = { `mplowrider_overlays`, `LR_M_Hair_001` },
        [61] = { `mplowrider_overlays`, `LR_M_Hair_002` },
        [62] = { `mplowrider_overlays`, `LR_M_Hair_003` },
        [63] = { `mplowrider2_overlays`, `LR_M_Hair_004` },
        [64] = { `mplowrider2_overlays`, `LR_M_Hair_005` },
        [65] = { `mplowrider2_overlays`, `LR_M_Hair_006` },
        [66] = { `mpbiker_overlays`, `MP_Biker_Hair_000_M` },
        [67] = { `mpbiker_overlays`, `MP_Biker_Hair_001_M` },
        [68] = { `mpbiker_overlays`, `MP_Biker_Hair_002_M` },
        [69] = { `mpbiker_overlays`, `MP_Biker_Hair_003_M` },
        [70] = { `mpbiker_overlays`, `MP_Biker_Hair_004_M` },
        [71] = { `mpbiker_overlays`, `MP_Biker_Hair_005_M` },
        [72] = { `mpgunrunning_overlays`, `MP_Gunrunning_Hair_M_000_M` },
        [73] = { `mpgunrunning_overlays`, `MP_Gunrunning_Hair_M_001_M` },
        [74] = { `mpVinewood_overlays`, `MP_Vinewood_Hair_M_000_M` },
        [75] = { `mptuner_overlays`, `MP_Tuner_Hair_001_M` },
        [76] = { `mpsecurity_overlays`, `MP_Security_Hair_001_M` },
    },

    female = {
        [0] = { `mpbeach_overlays`, `FM_Hair_Fuzz` },
        [1] = { `multiplayer_overlays`, `NG_F_Hair_001` },
        [2] = { `multiplayer_overlays`, `NG_F_Hair_002` },
        [3] = { `multiplayer_overlays`, `NG_F_Hair_003` },
        [4] = { `multiplayer_overlays`, `NG_F_Hair_004` },
        [5] = { `multiplayer_overlays`, `NG_F_Hair_005` },
        [6] = { `multiplayer_overlays`, `NG_F_Hair_006` },
        [7] = { `multiplayer_overlays`, `NG_F_Hair_007` },
        [8] = { `multiplayer_overlays`, `NG_F_Hair_008` },
        [9] = { `multiplayer_overlays`, `NG_F_Hair_009` },
        [10] = { `multiplayer_overlays`, `NG_F_Hair_010` },
        [11] = { `multiplayer_overlays`, `NG_F_Hair_011` },
        [12] = { `multiplayer_overlays`, `NG_F_Hair_012` },
        [13] = { `multiplayer_overlays`, `NG_F_Hair_013` },
        [14] = { `multiplayer_overlays`, `NG_M_Hair_014` },
        [15] = { `multiplayer_overlays`, `NG_M_Hair_015` },
        [16] = { `multiplayer_overlays`, `NGBea_F_Hair_000` },
        [17] = { `multiplayer_overlays`, `NGBea_F_Hair_001` },
        [18] = { `multiplayer_overlays`, `NG_F_Hair_007` },
        [19] = { `multiplayer_overlays`, `NGBus_F_Hair_000` },
        [20] = { `multiplayer_overlays`, `NGBus_F_Hair_001` },
        [21] = { `multiplayer_overlays`, `NGBea_F_Hair_001` },
        [22] = { `multiplayer_overlays`, `NGHip_F_Hair_000` },
        [23] = { `multiplayer_overlays`, `NGInd_F_Hair_000` },
        [25] = { `mplowrider_overlays`, `LR_F_Hair_000` },
        [26] = { `mplowrider_overlays`, `LR_F_Hair_001` },
        [27] = { `mplowrider_overlays`, `LR_F_Hair_002` },
        [28] = { `mplowrider2_overlays`, `LR_F_Hair_003` },
        [29] = { `mplowrider2_overlays`, `LR_F_Hair_003` },
        [30] = { `mplowrider2_overlays`, `LR_F_Hair_004` },
        [31] = { `mplowrider2_overlays`, `LR_F_Hair_006` },
        [32] = { `mpbiker_overlays`, `MP_Biker_Hair_000_F` },
        [33] = { `mpbiker_overlays`, `MP_Biker_Hair_001_F` },
        [34] = { `mpbiker_overlays`, `MP_Biker_Hair_002_F` },
        [35] = { `mpbiker_overlays`, `MP_Biker_Hair_003_F` },
        [36] = { `multiplayer_overlays`, `NG_F_Hair_003` },
        [37] = { `mpbiker_overlays`, `MP_Biker_Hair_006_F` },
        [38] = { `mpbiker_overlays`, `MP_Biker_Hair_004_F` },
        [39] = { `multiplayer_overlays`, `NG_F_Hair_001` },
        [40] = { `multiplayer_overlays`, `NG_F_Hair_002` },
        [41] = { `multiplayer_overlays`, `NG_F_Hair_003` },
        [42] = { `multiplayer_overlays`, `NG_F_Hair_004` },
        [43] = { `multiplayer_overlays`, `NG_F_Hair_005` },
        [44] = { `multiplayer_overlays`, `NG_F_Hair_006` },
        [45] = { `multiplayer_overlays`, `NG_F_Hair_007` },
        [46] = { `multiplayer_overlays`, `NG_F_Hair_008` },
        [47] = { `multiplayer_overlays`, `NG_F_Hair_009` },
        [48] = { `multiplayer_overlays`, `NG_F_Hair_010` },
        [49] = { `multiplayer_overlays`, `NG_F_Hair_011` },
        [50] = { `multiplayer_overlays`, `NG_F_Hair_012` },
        [51] = { `multiplayer_overlays`, `NG_F_Hair_013` },
        [52] = { `multiplayer_overlays`, `NG_M_Hair_014` },
        [53] = { `multiplayer_overlays`, `NG_M_Hair_015` },
        [54] = { `multiplayer_overlays`, `NGBea_F_Hair_000` },
        [55] = { `multiplayer_overlays`, `NGBea_F_Hair_001` },
        [56] = { `multiplayer_overlays`, `NG_F_Hair_007` },
        [57] = { `multiplayer_overlays`, `NGBus_F_Hair_000` },
        [58] = { `multiplayer_overlays`, `NGBus_F_Hair_001` },
        [59] = { `multiplayer_overlays`, `NGBea_F_Hair_001` },
        [60] = { `multiplayer_overlays`, `NGHip_F_Hair_000` },
        [61] = { `multiplayer_overlays`, `NGInd_F_Hair_000` },
        [62] = { `mplowrider_overlays`, `LR_F_Hair_000` },
        [63] = { `mplowrider_overlays`, `LR_F_Hair_001` },
        [64] = { `mplowrider_overlays`, `LR_F_Hair_002` },
        [65] = { `mplowrider2_overlays`, `LR_F_Hair_003` },
        [66] = { `mplowrider2_overlays`, `LR_F_Hair_003` },
        [67] = { `mplowrider2_overlays`, `LR_F_Hair_004` },
        [68] = { `mplowrider2_overlays`, `LR_F_Hair_006` },
        [69] = { `mpbiker_overlays`, `MP_Biker_Hair_000_F` },
        [70] = { `mpbiker_overlays`, `MP_Biker_Hair_001_F` },
        [71] = { `mpbiker_overlays`, `MP_Biker_Hair_002_F` },
        [72] = { `mpbiker_overlays`, `MP_Biker_Hair_003_F` },
        [73] = { `multiplayer_overlays`, `NG_F_Hair_003` },
        [74] = { `mpbiker_overlays`, `MP_Biker_Hair_006_F` },
        [75] = { `mpbiker_overlays`, `MP_Biker_Hair_004_F` },
        [76] = { `mpgunrunning_overlays`, `MP_Gunrunning_Hair_F_000_F` },
        [77] = { `mpgunrunning_overlays`, `MP_Gunrunning_Hair_F_001_F` },
        [78] = { `mpVinewood_overlays`, `MP_Vinewood_Hair_F_000_F` },
        [79] = { `mptuner_overlays`, `MP_Tuner_Hair_000_F` },
        [80] = { `mpsecurity_overlays`, `MP_Security_Hair_000_F` },
    },
}

local function tofloat(num)
    return num + 0.0
end

local function getPedDecorationType()
    local pedModel = GetEntityModel(cache.ped)
    local decorationType

    if pedModel == `mp_m_freemode_01` then
        decorationType = "male"
    elseif pedModel == `mp_f_freemode_01` then
        decorationType = "female"
    else
        decorationType = IsPedMale(cache.ped) and "male" or "female"
    end

    return decorationType
end

local function isPedFreemodeModel(ped)
    local model = GetEntityModel(ped)
    return model == `mp_m_freemode_01` or model == `mp_f_freemode_01`
end

local function setPlayerModel(model)
    if type(model) == "string" then model = joaat(model) end

    if IsModelInCdimage(model) then
        RequestModel(model)
        while not HasModelLoaded(model) do Wait(0) end

        SetPlayerModel(cache.playerId, model)
        Wait(150)
        SetModelAsNoLongerNeeded(model)

        if isPedFreemodeModel(cache.ped) then
            SetPedDefaultComponentVariation(cache.ped)
            -- Check if the model is male or female, then change the face mix based on this.
            if model == `mp_m_freemode_01` then
                SetPedHeadBlendData(cache.ped, 0, 0, 0, 0, 0, 0, 0, 0, 0, false)
            elseif model == `mp_f_freemode_01` then
                SetPedHeadBlendData(cache.ped, 45, 21, 0, 20, 15, 0, 0.3, 0.1, 0, false)
            end
        end

        PED_TATTOOS = {}
        return cache.ped
    end

    return cache.playerId
end

local function setPedHeadBlend(ped, headBlend)
    if headBlend and isPedFreemodeModel(ped) then
        SetPedHeadBlendData(ped, headBlend.shapeFirst, headBlend.shapeSecond, headBlend.shapeThird, headBlend.skinFirst,
            headBlend.skinSecond, headBlend.skinThird, tofloat(headBlend.shapeMix or 0), tofloat(headBlend.skinMix or 0),
            tofloat(headBlend.thirdMix or 0), false)
    end
end

local function setPedFaceFeatures(ped, faceFeatures)
    if faceFeatures then
        for k, v in pairs(constants.FACE_FEATURES) do
            SetPedFaceFeature(ped, k - 1, tofloat(faceFeatures[v]))
        end
    end
end

local function setPedHeadOverlays(ped, headOverlays)
    if headOverlays then
        for k, v in pairs(constants.HEAD_OVERLAYS) do
            local headOverlay = headOverlays[v]
            SetPedHeadOverlay(ped, k - 1, headOverlay.style, tofloat(headOverlay.opacity))

            if headOverlay.color then
                local colorType = 1
                if v == "blush" or v == "lipstick" or v == "makeUp" then
                    colorType = 2
                end

                SetPedHeadOverlayColor(ped, k - 1, colorType, headOverlay.color, headOverlay.secondColor)
            end
        end
    end
end

local function applyAutomaticFade(ped, style)
    local gender = getPedDecorationType()
    local hairDecoration = constants.HAIR_DECORATIONS[gender][style]

    if (hairDecoration) then
        AddPedDecorationFromHashes(ped, hairDecoration[1], hairDecoration[2])
    end
end

local function setTattoos(ped, tattoos, style)
    local isMale = getPedDecorationType() == "male"
    ClearPedDecorations(ped)
    if true then
        tattoos["ZONE_HAIR"] = {}
        PED_TATTOOS["ZONE_HAIR"] = {}
        applyAutomaticFade(ped, style or GetPedDrawableVariation(ped, 2))
    end
    for k in pairs(tattoos) do
        for i = 1, #tattoos[k] do
            local tattoo = tattoos[k][i]
            local tattooGender = isMale and tattoo.hashMale or tattoo.hashFemale
            for _ = 1, (tattoo.opacity or 0.1) * 10 do
                AddPedDecorationFromHashes(ped, joaat(tattoo.collection), joaat(tattooGender))
            end
        end
    end
end

local function setPedHair(ped, hair, tattoos)
    if hair then
        SetPedComponentVariation(ped, 2, hair.style, hair.texture, 0)
        SetPedHairColor(ped, hair.color, hair.highlight)
        if isPedFreemodeModel(ped) then
            setTattoos(ped, tattoos or PED_TATTOOS, hair.style)
        end
    end
end

local function setPedEyeColor(ped, eyeColor)
    if eyeColor then
        SetPedEyeColor(ped, eyeColor)
    end
end

local function setPedComponent(ped, component)
    if component then
        if isPedFreemodeModel(ped) and (component.component_id == 0 or component.component_id == 2) then
            return
        end

        SetPedComponentVariation(ped, component.component_id, component.drawable, component.texture, 0)
    end
end

local function setPedComponents(ped, components)
    if components then
        for _, v in pairs(components) do
            setPedComponent(ped, v)
        end
    end
end

local function setPedProp(ped, prop)
    if prop then
        if prop.drawable == -1 then
            ClearPedProp(ped, prop.prop_id)
        else
            SetPedPropIndex(ped, prop.prop_id, prop.drawable, prop.texture, false)
        end
    end
end

local function setPedProps(ped, props)
    if props then
        for _, v in pairs(props) do
            setPedProp(ped, v)
        end
    end
end

local function setPedTattoos(ped, tattoos)
    PED_TATTOOS = tattoos
    setTattoos(ped, tattoos)
end


local function setPedAppearance(ped, appearance)
    if appearance then
        setPedComponents(ped, appearance.components)
        setPedProps(ped, appearance.props)

        if appearance.headBlend and isPedFreemodeModel(ped) then setPedHeadBlend(ped, appearance.headBlend) end
        if appearance.faceFeatures then setPedFaceFeatures(ped, appearance.faceFeatures) end
        if appearance.headOverlays then setPedHeadOverlays(ped, appearance.headOverlays) end
        if appearance.hair then setPedHair(ped, appearance.hair, appearance.tattoos) end
        if appearance.eyeColor then setPedEyeColor(ped, appearance.eyeColor) end
        if appearance.tattoos then setPedTattoos(ped, appearance.tattoos) end
    end
end

local function setPlayerAppearance(appearance, cb)
    if appearance then
        setPlayerModel(appearance.model)
        setPedAppearance(cache.ped, appearance)

        local skin = exports['nf-skin']:GetPedAppearance(cache.ped)

        cb(skin)
    end
end

RegisterNetEvent('nf-skin_migrate:client:illenium', function(playerSkin, type)
    local parsedSkin = json.decode(playerSkin.skin)
    setPlayerAppearance(parsedSkin, function(skin)
        TriggerServerEvent("nf-skin_migrate:server:illenium_done",
            playerSkin.citizenid,
            playerSkin.model,
            type == 'playerskins' and skin or {
                components = skin.components,
                props = skin.props,
            },
            type
        )
        exports['nf-skin']:SetPedAppearance(cache.ped, exports['nf-skin']:GetConfigSkinData())
    end)
end)

RegisterNetEvent('nf-skin_migrate:client:illenium_outfit', function(playerSkin, type)
    setPlayerAppearance({
        model = playerSkin.model,
        components = json.decode(playerSkin.components),
        props = json.decode(playerSkin.props),
    }, function(skin)
        TriggerServerEvent("nf-skin_migrate:server:illenium_done",
            playerSkin.citizenid,
            playerSkin.model,
            type == 'playerskins' and skin or {
                components = skin.components,
                props = skin.props,
            },
            type
        )
        exports['nf-skin']:SetPedAppearance(cache.ped, exports['nf-skin']:GetConfigSkinData())
    end)
end)
