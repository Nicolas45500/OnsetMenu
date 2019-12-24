local ui = nil
local uiName = nil
local webMenu = 0

function createUI (name)
    if not ui == nil then
        CallEvent("closeUI")
    end
	width, height = GetScreenSize()
	uiName = name
	ui = CreateWebUI(0, 0, 0, 0, 5, 32)
	LoadWebFile(ui, "http://asset/".. GetPackageName() .."/client/gui/index.html")
	SetWebAlignment(ui, 0.0, 0.0)
	SetWebAnchors(ui, 0.0, 0.0, 1.0, 1.0)
	SetWebVisibility(ui, WEB_VISIBLE)
	SetIgnoreLookInput(true)
	ShowMouseCursor(true)
	SetInputMode(INPUT_GAMEANDUI)
end
-- (EN) Usage: CallEvent("createUI", "NAME_GOES_HERE")
-- (FR) Utilisation: CallEvent("createUI", "NAME_GOES_HERE")
AddEvent("createUI", createUI)
-- (EN) Destroy / Remove current GUI
-- (FR) Détruire / supprimer l'interface graphique actuelle
function destroyUI ()
    DestroyWebUI(ui)
    ui = nil
    uiName = nil

    SetIgnoreLookInput(false)
    ShowMouseCursor(false)
    SetInputMode(INPUT_GAME)
end

-- (EN) Event to close UI
-- (FR) Événement pour fermer l'interface utilisateur
AddEvent("closeUI", destroyUI)

function onUIReady ()
end

AddEvent("onUIReady", onUIReady)

-- (EN) Load Spawn Menu
-- (FR) Charger le menu d'apparition
AddRemoteEvent("LoadSpawnMenu", function ()
    CallEvent("createUI", "spawnMenu")
end)

-- (EN) displays the menu if you press E
-- (FR) affiche le menu si on appuie sur E
AddEvent("OnKeyPress", function(key)
    if key == 'F1' and webMenu == 0 then
        createUI("NicoMenu v1.0")
        webMenu = 1
    elseif key == 'F1' and webMenu == 1 then
        destroyUI()
        webMenu = 0
    end
end)

for i = -0, 26 do
  AddEvent(""..i.."", function()
  CallRemoteEvent(""..i.."");
  destroyUI()
  webMenu = 0
  end)
end

for i = -0, 18 do
  AddEvent("ColorV"..i, function()
  CallRemoteEvent("ColorV"..i);
  end)
end

AddEvent("heal", function()
  CallRemoteEvent("heal")
end)
AddEvent("armor", function()
  CallRemoteEvent("armor")
end)
AddEvent("hurt", function()
  CallRemoteEvent("hurt")
end)
AddEvent("Kill", function()
  CallRemoteEvent("Kill")
end)
AddEvent("ArmorHurt", function()
  CallRemoteEvent("ArmorHurt")
end)
AddEvent("ArmorRemove", function()
  CallRemoteEvent("ArmorRemove")
end)



AddEvent("SetVehicleDamage", function()
  CallRemoteEvent("SetVehicleDamage")
end)
AddEvent("DestroyVehicle", function()
  CallRemoteEvent("DestroyVehicle")
end)
AddEvent("SwichPlacee", function()
  CallRemoteEvent("SwichPlacee")
end)
AddEvent("KillEngine", function()
  CallRemoteEvent("KillEngine")
end)
AddEvent("ReturVehicle", function()
  CallRemoteEvent("ReturVehicle")
end)
AddEvent("FixEngineVehicle", function()
  CallRemoteEvent("FixEngineVehicle")
end)
AddEvent("RepairVehicle", function()
  CallRemoteEvent("RepairVehicle")
end)

AddEvent("SetSpawn", function()
  CallRemoteEvent("SetSpawn")
end)

for i = -0, 10 do
  AddEvent("T"..i, function()
  CallRemoteEvent("T"..i);
  end)
end

for i = -0, 20 do
  AddEvent("Wearpon"..i, function()
  CallRemoteEvent("Wearpon"..i);
  end)
end

AddEvent("AttachPlayerParachute", function()
  CallRemoteEvent("AttachPlayerParachute");
end)

for i = -0, 147 do
  AddEvent("A"..i, function()
  CallRemoteEvent("A"..i);
  end)
end
AddEvent("into", function()
  CallRemoteEvent("into")
end)