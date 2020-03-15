------------------------------------------------------------
-- caps is set to take no action in keyboard settings
-- and using karabiner, it is mapped to hyper
-- and now hyper can be used as hotkey prefix  
------------------------------------------------------------
hyper = {"ctrl", "alt", "cmd", "shift"}

------------------------------------------------------------
-- This removed formatting while pasting clipboard text 
------------------------------------------------------------
hs.hotkey.bind(hyper, "v", function() hs.eventtap.keyStrokes(hs.pasteboard.getContents()) end)

------------------------------------------------------------
-- enable notifications when wifi is connected/disconnected 
------------------------------------------------------------
local wifi = require('wifi')

------------------------------------------------------------
-- hotkeys to launch apps blazingly fast
------------------------------------------------------------
local wifi = require('fastapp')

------------------------------------------------------------
-- using spoons here 
------------------------------------------------------------
hs.loadSpoon("SpoonInstall")
Install=spoon.SpoonInstall

------------------------------------------------------------
-- omni focus 
------------------------------------------------------------
Install:andUse("SendToOmniFocus",
   {
     config = {
       quickentrydialog = false,
       notifications = false
     },
     hotkeys = {
       send_to_omnifocus = { hyper, "t" }
     },
   }
)

------------------------------------------------------------
-- look up selection, open selected word in dictionary  
------------------------------------------------------------
Install:andUse("LookupSelection", 
	{
		hotkeys = {
       		lexicon = { hyper, "d" }
     	},
	}
)
