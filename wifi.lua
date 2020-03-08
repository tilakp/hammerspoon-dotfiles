----------------------------------------------
-- get notification when wifi network changes
----------------------------------------------
wifiwatcher = hs.wifi.watcher.new(function ()
    net = hs.wifi.currentNetwork()
    if net==nil then
        hs.notify.show("You lost Wi-Fi connection","","","")
    else
        hs.notify.show("Connected to Wi-Fi network","",net,"")
    end
end)
wifiwatcher:start()


---------------------------------------------
-- display wifi network name in the menubar 
---------------------------------------------

local wifiMenu = hs.menubar.new()
function ssidChangedCallback()
    SSID = hs.wifi.currentNetwork()
    if SSID == nil then
        SSID = "Disconnected"
    end
    wifiMenu:setTitle("(" .. SSID .. ")" )
end
wifiWatcher = hs.wifi.watcher.new(ssidChangedCallback)
wifiWatcher:start()
ssidChangedCallback()