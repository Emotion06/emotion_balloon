local VorpCore = {}

TriggerEvent("getCore", function(core)
    VorpCore = core
end)

-------------------------------------------------------------------------
----------------------------   Take Money    ----------------------------
-------------------------------------------------------------------------

RegisterServerEvent('emotion_balloon:takemoney')
AddEventHandler('emotion_balloon:takemoney', function ()
    local _source = source

    local Character = VorpCore.getUser(_source).getUsedCharacter
    for i, v in pairs(Config.RentABalloon) do
        if Config.PayPrice then
            Character.removeCurrency(0, v.price)
            VorpCore.NotifyLeft(_source, ""..Config.Language[3].text.."", ""..Config.Language[4].text.."", "generic_textures", "tick", 4000, "COLOR_PURE_WHITE")
        end
    end
end)

-------------------------------------------------------------------------
-------------------------------   End    --------------------------------
-------------------------------------------------------------------------

print("^6πππππππ_π½πΌπππππ ^5is Started! ^6π ππ’π€π©ππ€π£ πππ§ππ₯π©π¨ ^0- ^5https://discord.gg/h4nhwVQCAQ ^0")
