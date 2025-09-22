local src = ""
local CoreGui = game:GetService("StarterGui")

pcall(function() 
    src = game:HttpGet("https://rawscripts.net/raw/Universal-Script-YARHM-12403", false)
end)
if src == "" then
  CoreGui:SetCore("SendNotification", {
  	Title = "Dark Hub Outage";
  	Text = "Dark Hub is currently unavailable! Sorry for the inconvenience. Using Dark Hub Offline.";
	  Duration = 5;
  })
  src = game:HttpGet("https://raw.githubusercontent.com/Joystickplays/psychic-octo-invention/main/source/yarhm/1.19/yarhm.lua", false)
end


loadstring(src)()
