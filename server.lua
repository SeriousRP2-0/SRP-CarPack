SetConvarServerInfo('tags', 'QB-CarPack')

updatePath = "/QB-Configs/QB-CarPack"

CreateThread(function()
    if GetCurrentResourceName() ~= "QB-CarPack" then
        print("-----------------------------------------------------")
        print("Please Dont Change the resource name to avoid errors.")
        print("-----------------------------------------------------")
    end
    if GetCurrentResourceName() == 'QB-CarPack' then
        function checkVersion(_, responseText)
            curVersion = LoadResourceFile(GetCurrentResourceName(), "version")

            if curVersion ~= responseText and tonumber(curVersion) < tonumber(responseText) then
                print("≋≋≋≋≋≋≋≋≋≋♱≋≋≋≋≋≋≋≋≋≋║                   Thanks For Using My Car Pack!")
                print("≋≋≋≋≋≋≋≋≋≋♱≋≋≋≋≋≋≋≋≋≋║")
                print("≋≋≋≋≋≋≋≋≋≋♱≋≋≋≋≋≋≋≋≋≋║ have a question? or wanna chat with other users? join https://discord.gg/5eUjdx3Gdw")
                print("≋≋≋≋≋≋≋≋≋≋♱≋≋≋≋≋≋≋≋≋≋║")
                print("≋≋≋≋≋≋≋≋≋≋♱≋≋≋≋≋≋≋≋≋≋║                       Oh It Looks Like (QB-CarPack) Is outdated")
                print("≋≋≋≋≋≋≋≋≋≋♱≋≋≋≋≋≋≋≋≋≋║ should be: "..responseText..",currently is: "..curVersion..". Please update it from https://github.com"..updatePath.."")
            elseif tonumber(curVersion) > tonumber(responseText) then
                print("≋≋≋≋≋≋≋≋≋≋♱≋≋≋≋≋≋≋≋≋≋║                   Thanks For Using My Car Pack!")
                print("≋≋≋≋≋≋≋≋≋≋♱≋≋≋≋≋≋≋≋≋≋║")
                print("≋≋≋≋≋≋≋≋≋≋♱≋≋≋≋≋≋≋≋≋≋║  have a question? or wanna chat with other users? join https://discord.gg/5eUjdx3Gdw")
                print("≋≋≋≋≋≋≋≋≋≋♱≋≋≋≋≋≋≋≋≋≋║")
                print("≋≋≋≋≋≋≋≋≋≋♱≋≋≋≋≋≋≋≋≋≋║                Uh Oh! You somehow skipped a few versions of QB-CarPack")
                print("≋≋≋≋≋≋≋≋≋≋♱≋≋≋≋≋≋≋≋≋≋║  or the git went offline, if it's still online i advise you to update (or downgrade?)")
            else
                print("≋≋≋≋≋≋≋≋≋≋♱≋≋≋≋≋≋≋≋≋≋║                   Thanks For Using My Car Pack!")
                print("≋≋≋≋≋≋≋≋≋≋♱≋≋≋≋≋≋≋≋≋≋║")
                print("≋≋≋≋≋≋≋≋≋≋♱≋≋≋≋≋≋≋≋≋≋║ have a question? or wanna chat with other users? join https://discord.gg/5eUjdx3Gdw")
                print("≋≋≋≋≋≋≋≋≋≋♱≋≋≋≋≋≋≋≋≋≋║")
                print("≋≋≋≋≋≋≋≋≋≋♱≋≋≋≋≋≋≋≋≋≋║                   It Looks Like (QB-CarPack) is Good And Up To Date!")
            end
        end
    end

    PerformHttpRequest("https://raw.githubusercontent.com"..updatePath.."version/Carpack", checkVersion, "GET")
end)
