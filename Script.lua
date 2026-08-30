local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("QXNzZXRz") then
  CoreGui["QXNzZXRz"]:Destroy()
end
local AssetsFolder = Instance.new("Folder")
AssetsFolder.Name = "QXNzZXRz"
AssetsFolder.Parent = CoreGui
local AlertSound = Instance.new("Sound")
AlertSound.Name = "Alert"
AlertSound.SoundId = "rbxassetid://139302680939651"
AlertSound.PlaybackSpeed = 1.5
AlertSound.Volume = 1
AlertSound.Parent = AssetsFolder
local Reverb = Instance.new("ReverbSoundEffect")
Reverb.DecayTime = 1
Reverb.Density = 1
Reverb.Diffusion = 1
Reverb.DryLevel = -6
Reverb.WetLevel = 0
Reverb.Parent = AlertSound
EntityNames = {
  "A-60",
  "monster2", -- A-200
  "AmbushMoving",
  "CeaseMoving", -- Cease
  "Specimen 8",
  "Frostbite",
  "Rebound",
  "RipperMoving", -- Ripper
  "RushMoving",
  "Silence",
  "Eyes",
  "Shocker" -- Blitz
}
local StarterGui = game:GetService("StarterGui")
function SendAlert(Title, Content, PlaySound)
  StarterGui:SetCore("SendNotification", {
    ["Title"] = Title,
    ["Text"] = Content
  })
  if PlaySound then
    AlertSound.TimePosition = 0
    AlertSound:Play()
  end
end
SendAlert("Entity Notifier Loaded", "Successfully loaded and executed script version 1.12042026", false)
workspace.ChildAdded:Connect(function(Added)
  if table.find(EntityNames, Added.Name) then
    if Added.Name == "A-60" then
      SendAlert("A-60 spawned!", "", true)
    elseif Added.Name == "monster2" then
      SendAlert("A-200 spawned!", "", true)
    elseif Added.Name == "AmbushMoving" then
      SendAlert("Ambush spawned!", "", true)
    elseif Added.Name == "CeaseMoving" then
      SendAlert("Cease spawned!", "", true)
    elseif Added.Name == "Specimen 8" then
      SendAlert("Deer God spawned!", "", true)
    elseif Added.Name == "Frostbite" then
      SendAlert("Frostbite spawned!", "", true)
    elseif Added.Name == "Rebound" then
      SendAlert("Rebound spawned!", "", true)
    elseif Added.Name == "RipperMoving" then
      SendAlert("Ripper spawned!", "", true)
    elseif Added.Name == "RushMoving" then
      SendAlert("Rush spawned!", "", true)
    elseif Added.Name == "Silence" then
      SendAlert("Silence spawned!", "", true)
    elseif Added.Name == "Eyes" then
      SendAlert("Eyes spawned!", "", true)
    elseif Added.Name == "Shcoker" then
      SendAlert("Blitz spawned!", "", true)
    end
  end
end)
