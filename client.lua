Citizen.CreateThread(function()
    while true do
        local player = GetPlayerPed(-1)
        
        Citizen.Wait(1000)

        -- Set Discord App ID
        SetDiscordAppId(YourAPPID)

        -- Set player count display
        local onlinePlayers = GetNumberOfPlayers()
        SetRichPresence(onlinePlayers.."/48")

        -- Set Large Image
        SetDiscordRichPresenceAsset("large")
        SetDiscordRichPresenceAssetText("YOURSERVER")

        -- Set Small Image
        SetDiscordRichPresenceAssetSmall("min") 
        SetDiscordRichPresenceAssetSmallText("WHATEVERYOUWANTHERE")

        -- Add Buttons (Max 2)
        SetDiscordRichPresenceAction(0, "Discord", "https://discord.gg/yourdc")
        SetDiscordRichPresenceAction(1, "Connect to Server", "fivem://connect/yourserverip")

    end
end)
