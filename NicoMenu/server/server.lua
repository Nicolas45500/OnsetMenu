local r,v,b = 0, 0, 0;
local departV = 1;
local departC = 0;

function webListFun(table, valeur)
  for _,v in ipairs(table) do
    if v == valeur then
      return true
    end
  end
  return false
end

AddRemoteEvent("heal", function(playerid)
	
	local idSteam = GetPlayerSteamId(playerid)
    
    if webListFun(weblist, idSteam) and healPerm == true then
		SetPlayerHealth(playerid, 100)
	elseif healPerm == false then
		SetPlayerHealth(playerid, 100)
  else
    AddPlayerChat(playerid, "you don't have permission")
	print(webListFun(weblist, idSteam))
  end
end)
AddRemoteEvent("armor", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and armorPerm == true then
		SetPlayerArmor(playerid, 100)
	elseif armorPerm == false then
		SetPlayerArmor(playerid, 100)
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("hurt", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and hurtPerm == true then
		SetPlayerHealth(playerid, GetPlayerHealth(playerid)-3)
	elseif hurtPerm == false then
		SetPlayerHealth(playerid, GetPlayerHealth(playerid)-3)
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("Kill", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and KillPerm == true then
		SetPlayerHealth(playerid, -99)
	elseif KillPerm == false then
		SetPlayerHealth(playerid, -99)
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("ArmorHurt", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and armorHurtPerm == true then
		SetPlayerArmor(playerid, GetPlayerArmor(playerid)-3)
	elseif armorHurtPerm == false then
		SetPlayerArmor(playerid, GetPlayerArmor(playerid)-3)
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("ArmorRemove", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and armorRemovePerm == true then
		SetPlayerArmor(playerid, -99)
	elseif armorRemovePerm == false then
		SetPlayerArmor(playerid, -99)
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("SetVehicleDamage", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and setVehicleDamagePerm == true then
		playerVehicle = GetPlayerVehicle(playerid);
		local r = math.random(1,8)
		
		if r ==1 then
			SetVehicleDamage(playerVehicle, 1, 1);
		end
		if r ==2 then
			SetVehicleDamage(playerVehicle, 2, 1);
		end
		if r ==3 then
			SetVehicleDamage(playerVehicle, 3, 1);
		end
		if r ==4 then
			SetVehicleDamage(playerVehicle, 4, 1);
		end
		if r ==5 then
			SetVehicleDamage(playerVehicle, 5, 1);
		end
		if r ==6 then
			SetVehicleDamage(playerVehicle, 6, 1);
		end
		if r ==7 then
			SetVehicleDamage(playerVehicle, 7, 1);
		end
		if r ==8 then
			SetVehicleDamage(playerVehicle, 8, 1);
		end
	elseif setVehicleDamagePerm == false then
		playerVehicle = GetPlayerVehicle(playerid);
		local r = math.random(1,8)
		
		if r ==1 then
			SetVehicleDamage(playerVehicle, 1, 1);
		end
		if r ==2 then
			SetVehicleDamage(playerVehicle, 2, 1);
		end
		if r ==3 then
			SetVehicleDamage(playerVehicle, 3, 1);
		end
		if r ==4 then
			SetVehicleDamage(playerVehicle, 4, 1);
		end
		if r ==5 then
			SetVehicleDamage(playerVehicle, 5, 1);
		end
		if r ==6 then
			SetVehicleDamage(playerVehicle, 6, 1);
		end
		if r ==7 then
			SetVehicleDamage(playerVehicle, 7, 1);
		end
		if r ==8 then
			SetVehicleDamage(playerVehicle, 8, 1);
		end
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
	
end)

AddRemoteEvent("DestroyVehicle", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and destroyVehiclePerm == true then
		playerVehicle = GetPlayerVehicle(playerid);
		DestroyVehicle(playerVehicle);
	elseif destroyVehiclePerm == false then
		playerVehicle = GetPlayerVehicle(playerid);
		DestroyVehicle(playerVehicle);
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("SwichPlacee", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and swichPlaceePerm == true then
		playerVehicle = GetPlayerVehicle(playerid);
		local r = math.random(1,4)
		
		if r ==1 then
			SetPlayerInVehicle(playerid, playerVehicle , 1)
		end
		if r ==2 then
			SetPlayerInVehicle(playerid, playerVehicle ,2 )
		end
		if r ==3 then
			SetPlayerInVehicle(playerid, playerVehicle , 3)
		end
		if r ==4 then
			SetPlayerInVehicle(playerid, playerVehicle , 4)
		end
	elseif swichPlaceePerm == false then
		playerVehicle = GetPlayerVehicle(playerid);
		local r = math.random(1,4)
		
		if r ==1 then
			SetPlayerInVehicle(playerid, playerVehicle , 1)
		end
		if r ==2 then
			SetPlayerInVehicle(playerid, playerVehicle ,2 )
		end
		if r ==3 then
			SetPlayerInVehicle(playerid, playerVehicle , 3)
		end
		if r ==4 then
			SetPlayerInVehicle(playerid, playerVehicle , 4)
		end
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("KillEngine", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and killEnginePerm == true then
		playerVehicle = GetPlayerVehicle(playerid);
		SetVehicleHealth(playerVehicle, GetVehicleHealth(playerVehicle)-5000);
	elseif killEnginePerm == false then
		playerVehicle = GetPlayerVehicle(playerid);
		SetVehicleHealth(playerVehicle, GetVehicleHealth(playerVehicle)-5000);
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("ReturVehicle", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and returVehiclePerm == true then
		playerVehicle = GetPlayerVehicle(playerid);
		SetVehicleRotation(playerVehicle, 2, 2, 2)
	elseif returVehiclePerm == false then
		playerVehicle = GetPlayerVehicle(playerid);
		SetVehicleRotation(playerVehicle, 2, 2, 2)
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("FixEngineVehicle", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and fixEngineVehiclePerm == true then
		playerVehicle = GetPlayerVehicle(playerid);
		SetVehicleHealth(playerVehicle, 5000);
	elseif fixEngineVehiclePerm == false then
		playerVehicle = GetPlayerVehicle(playerid);
		SetVehicleHealth(playerVehicle, 5000);
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("RepairVehicle", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and repairVehiclePerm == true then
		playerVehicle = GetPlayerVehicle(playerid);
		local r = math.random(1,8)
		
		if r ==1 then
			SetVehicleDamage(playerVehicle, 1, 0);
		end
		if r ==2 then
			SetVehicleDamage(playerVehicle, 2, 0);
		end
		if r ==3 then
			SetVehicleDamage(playerVehicle, 3, 0);
		end
		if r ==4 then
			SetVehicleDamage(playerVehicle, 4, 0);
		end
		if r ==5 then
			SetVehicleDamage(playerVehicle, 5, 0);
		end
		if r ==6 then
			SetVehicleDamage(playerVehicle, 6, 0);
		end
		if r ==7 then
			SetVehicleDamage(playerVehicle, 7, 0);
		end
		if r ==8 then
			SetVehicleDamage(playerVehicle, 8, 0);
		end
	elseif repairVehiclePerm == false then
		playerVehicle = GetPlayerVehicle(playerid);
		local r = math.random(1,8)
		
		if r ==1 then
			SetVehicleDamage(playerVehicle, 1, 0);
		end
		if r ==2 then
			SetVehicleDamage(playerVehicle, 2, 0);
		end
		if r ==3 then
			SetVehicleDamage(playerVehicle, 3, 0);
		end
		if r ==4 then
			SetVehicleDamage(playerVehicle, 4, 0);
		end
		if r ==5 then
			SetVehicleDamage(playerVehicle, 5, 0);
		end
		if r ==6 then
			SetVehicleDamage(playerVehicle, 6, 0);
		end
		if r ==7 then
			SetVehicleDamage(playerVehicle, 7, 0);
		end
		if r ==8 then
			SetVehicleDamage(playerVehicle, 8, 0);
		end
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)



AddRemoteEvent("SetSpawn", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and setSpawnPerm == true then
		local x, y, z = GetPlayerLocation(playerid);
		local h = 1;
		SetPlayerSpawnLocation(playerid, x, y, z, h);
		AddPlayerChat(playerid, "the spawn point has been change !")
	elseif setSpawnPerm == false then
		local x, y, z = GetPlayerLocation(playerid);
		local h = 1;
		SetPlayerSpawnLocation(playerid, x, y, z, h);
		AddPlayerChat(playerid, "the spawn point has been change !")
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)

AddRemoteEvent("X", function(playerid)

	local x, y, z = GetPlayerLocation(playerid);
	local h = 1;
	AddPlayerChat(playerid, GetPlayerLocation(playerid))
end)

AddRemoteEvent("T1", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and spawnPlayerPerm == true then
		local h = 1;
		SetPlayerLocation(playerid, 125368.0625, 82241.359375, 1568.8272705078, h);
	elseif spawnPlayerPerm == false then
		local h = 1;
		SetPlayerLocation(playerid, 125368.0625, 82241.359375, 1568.8272705078, h);
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("T2", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and spawnPlayerPerm == true then
		local h = 1;
		SetPlayerLocation(playerid, 152448.109375, -130492.890625, 1250.2822265625, h);
	elseif spawnPlayerPerm == false then
		local h = 1;
		SetPlayerLocation(playerid, 152448.109375, -130492.890625, 1250.2822265625, h);
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("T3", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and spawnPlayerPerm == true then
		local h = 1;
		SetPlayerLocation(playerid, 224862.6875, -67051.2578125, 174.7021484375, h);
	elseif spawnPlayerPerm == false then
		local h = 1;
		SetPlayerLocation(playerid, 224862.6875, -67051.2578125, 174.7021484375, h);
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("T4", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and spawnPlayerPerm == true then
		local h = 1;
		SetPlayerLocation(playerid, 187449.984375, -45552.1875, 1452.8234863281, h);
	elseif spawnPlayerPerm == false then
		local h = 1;
		SetPlayerLocation(playerid, 187449.984375, -45552.1875, 1452.8234863281, h);
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("T5", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and spawnPlayerPerm == true then
		local h = 1;
		SetPlayerLocation(playerid, 198997.8125, 54710.984375, 1411.6561279297, h);
	elseif spawnPlayerPerm == false then
		local h = 1;
		SetPlayerLocation(playerid, 198997.8125, 54710.984375, 1411.6561279297, h);
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("T6", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and spawnPlayerPerm == true then
		local h = 1;
		SetPlayerLocation(playerid, 211975.3328125, 94241.9609375, 1312.7694091797, h);
	elseif spawnPlayerPerm == false then
		local h = 1;
		SetPlayerLocation(playerid, 211975.3328125, 94241.9609375, 1312.7694091797, h);
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("T7", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and spawnPlayerPerm == true then
		local h = 1;
		SetPlayerLocation(playerid, 220678.734375, 189655.921875, 1291.94921875, h);
	elseif spawnPlayerPerm == false then
		local h = 1;
		SetPlayerLocation(playerid, 220678.734375, 189655.921875, 1291.94921875, h);
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("T8", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and spawnPlayerPerm == true then
		local h = 1;
		SetPlayerLocation(playerid, 77660.4296875, 185763.984375, 537.49359130859, h);
	elseif spawnPlayerPerm == false then
		local h = 1;
		SetPlayerLocation(playerid, 77660.4296875, 185763.984375, 537.49359130859, h);
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("T9", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and spawnPlayerPerm == true then
		local h = 1;
		SetPlayerLocation(playerid, 43067.59375, 146652.625, 1395.0445556641, h);
	elseif spawnPlayerPerm == false then
		local h = 1;
		SetPlayerLocation(playerid, 43067.59375, 146652.625, 1395.0445556641, h);
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)

AddRemoteEvent("ColorV1", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and spawnVeiculePerm == true then
		departC = 1
		r,v,b = 241, 13, 13;
	elseif spawnVeiculePerm == false then
		departC = 1
		r,v,b = 241, 13, 13;
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("ColorV2", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and spawnVeiculePerm == true then
		departC = 1
		r,v,b = 238, 154, 16;
	elseif spawnVeiculePerm == false then
		departC = 1
		r,v,b = 238, 154, 16;
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("ColorV3", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and spawnVeiculePerm == true then
		departC = 1
		r,v,b = 240, 255, 0;
	elseif spawnVeiculePerm == false then
		departC = 1
		r,v,b = 240, 255, 0;
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("ColorV4", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and spawnVeiculePerm == true then
		departC = 1
		r,v,b = 102, 233, 17;
	elseif spawnVeiculePerm == false then
		departC = 1
		r,v,b = 102, 233, 17;
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("ColorV5", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and spawnVeiculePerm == true then
		departC = 1
		r,v,b = 17, 233, 168;
	elseif spawnVeiculePerm == false then
		departC = 1
		r,v,b = 17, 233, 168;
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("ColorV6", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and spawnVeiculePerm == true then
		departC = 1
		r,v,b = 0, 135, 255;
	elseif spawnVeiculePerm == false then
		departC = 1
		r,v,b = 0, 135, 255;
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("ColorV7", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and spawnVeiculePerm == true then
		departC = 1
		r,v,b = 0, 27, 255;
	elseif spawnVeiculePerm == false then
		departC = 1
		r,v,b = 0, 27, 255;
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("ColorV8", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and spawnVeiculePerm == true then
		departC = 1
		r,v,b = 140, 66, 252;
	elseif spawnVeiculePerm == false then
		departC = 1
		r,v,b = 140, 66, 252;
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("ColorV9", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and spawnVeiculePerm == true then
		departC = 1
		r,v,b = 85, 19, 186;
	elseif spawnVeiculePerm == false then
		departC = 1
		r,v,b = 85, 19, 186;
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("ColorV10", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and spawnVeiculePerm == true then
		departC = 1
		r,v,b = 255, 65, 186;
	elseif spawnVeiculePerm == false then
		departC = 1
		r,v,b = 255, 65, 186;
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("ColorV11", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and spawnVeiculePerm == true then
		departC = 1
		r,v,b = 255, 0, 236;
	elseif spawnVeiculePerm == false then
		departC = 1
		r,v,b = 255, 0, 236;
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("ColorV12", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and spawnVeiculePerm == true then
		departC = 1
		r,v,b = 165, 165, 165;
	elseif spawnVeiculePerm == false then
		departC = 1
		r,v,b = 165, 165, 165;
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("ColorV13", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and spawnVeiculePerm == true then
		departC = 1
		r,v,b = 86, 85, 85;
	elseif spawnVeiculePerm == false then
		departC = 1
		r,v,b = 86, 85, 85;
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("ColorV14", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and spawnVeiculePerm == true then
		departC = 1
		r,v,b = 27, 31, 27;
	elseif spawnVeiculePerm == false then
		departC = 1
		r,v,b = 27, 31, 27;
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("ColorV15", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and spawnVeiculePerm == true then
		departC = 1
		r,v,b = 29, 28, 28;
	elseif spawnVeiculePerm == false then
		departC = 1
		r,v,b = 29, 28, 28;
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("ColorV16", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and spawnVeiculePerm == true then
		departC = 1
		r,v,b = 255, 255, 255;
	elseif spawnVeiculePerm == false then
		departC = 1
		r,v,b = 255, 255, 255;
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("ColorV17", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and spawnVeiculePerm == true then
		departC = 1
		r,v,b = 227, 223, 223;
	elseif spawnVeiculePerm == false then
		departC = 1
		r,v,b = 227, 223, 223;
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)

AddRemoteEvent("1", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and spawnVeiculePerm == true then
		local x, y, z = GetPlayerLocation(playerid)
		local h = GetPlayerHeading(playerid)
		local vehicle = CreateVehicle(1, x, y, z, h)
		SetPlayerInVehicle(playerid, vehicle)
		if departV == 1 and departC == 0 then
			GetVehicleColor(vehicle)
			departV = 0
		else
			SetVehicleColor(vehicle, RGB(r, v, b))
			departV = 1
			departC = 0
		end
	elseif spawnVeiculePerm == false then
		local x, y, z = GetPlayerLocation(playerid)
		local h = GetPlayerHeading(playerid)
		local vehicle = CreateVehicle(1, x, y, z, h)
		SetPlayerInVehicle(playerid, vehicle)
		if departV == 1 and departC == 0 then
			GetVehicleColor(vehicle)
			departV = 0
		else
			SetVehicleColor(vehicle, RGB(r, v, b))
			departV = 1
			departC = 0
		end
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("2", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and spawnVeiculePerm == true then
		local x, y, z = GetPlayerLocation(playerid)
		local h = GetPlayerHeading(playerid)
		local vehicle = CreateVehicle(4, x, y, z, h)
		SetPlayerInVehicle(playerid, vehicle)
		if departV == 1 and departC == 0 then
			GetVehicleColor(vehicle)
			departV = 0
		else
			SetVehicleColor(vehicle, RGB(r, v, b))
			departV = 1
			departC = 0
		end
	elseif spawnVeiculePerm == false then
		local x, y, z = GetPlayerLocation(playerid)
		local h = GetPlayerHeading(playerid)
		local vehicle = CreateVehicle(4, x, y, z, h)
		SetPlayerInVehicle(playerid, vehicle)
		if departV == 1 and departC == 0 then
			GetVehicleColor(vehicle)
			departV = 0
		else
			SetVehicleColor(vehicle, RGB(r, v, b))
			departV = 1
			departC = 0
		end
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("3", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and spawnVeiculePerm == true then
		local x, y, z = GetPlayerLocation(playerid)
		local h = GetPlayerHeading(playerid)
		local vehicle = CreateVehicle(5, x, y, z, h)
		SetPlayerInVehicle(playerid, vehicle)
		if departV == 1 and departC == 0 then
			GetVehicleColor(vehicle)
			departV = 0
		else
			SetVehicleColor(vehicle, RGB(r, v, b))
			departV = 1
			departC = 0
		end
	elseif spawnVeiculePerm == false then
		local x, y, z = GetPlayerLocation(playerid)
		local h = GetPlayerHeading(playerid)
		local vehicle = CreateVehicle(5, x, y, z, h)
		SetPlayerInVehicle(playerid, vehicle)
		if departV == 1 and departC == 0 then
			GetVehicleColor(vehicle)
			departV = 0
		else
			SetVehicleColor(vehicle, RGB(r, v, b))
			departV = 1
			departC = 0
		end
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("4", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and spawnVeiculePerm == true then
		local x, y, z = GetPlayerLocation(playerid)
		local h = GetPlayerHeading(playerid)
		local vehicle = CreateVehicle(2, x, y, z, h)
		SetPlayerInVehicle(playerid, vehicle)
		if departV == 1 and departC == 0 then
			GetVehicleColor(vehicle)
			departV = 0
		else
			SetVehicleColor(vehicle, RGB(r, v, b))
			departV = 1
			departC = 0
		end
	elseif spawnVeiculePerm == false then
		local x, y, z = GetPlayerLocation(playerid)
		local h = GetPlayerHeading(playerid)
		local vehicle = CreateVehicle(2, x, y, z, h)
		SetPlayerInVehicle(playerid, vehicle)
		if departV == 1 and departC == 0 then
			GetVehicleColor(vehicle)
			departV = 0
		else
			SetVehicleColor(vehicle, RGB(r, v, b))
			departV = 1
			departC = 0
		end
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("5", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and spawnVeiculePerm == true then
		local x, y, z = GetPlayerLocation(playerid)
		local h = GetPlayerHeading(playerid)
		local vehicle = CreateVehicle(3, x, y, z, h)
		SetPlayerInVehicle(playerid, vehicle)
		if departV == 1 and departC == 0 then
			GetVehicleColor(vehicle)
			departV = 0
		else
			SetVehicleColor(vehicle, RGB(r, v, b))
			departV = 1
			departC = 0
		end
	elseif spawnVeiculePerm == false then
		local x, y, z = GetPlayerLocation(playerid)
		local h = GetPlayerHeading(playerid)
		local vehicle = CreateVehicle(3, x, y, z, h)
		SetPlayerInVehicle(playerid, vehicle)
		if departV == 1 and departC == 0 then
			GetVehicleColor(vehicle)
			departV = 0
		else
			SetVehicleColor(vehicle, RGB(r, v, b))
			departV = 1
			departC = 0
		end
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("6", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and spawnVeiculePerm == true then
		local x, y, z = GetPlayerLocation(playerid)
		local h = GetPlayerHeading(playerid)
		local vehicle = CreateVehicle(6, x, y, z, h)
		SetPlayerInVehicle(playerid, vehicle)
		if departV == 1 and departC == 0 then
			GetVehicleColor(vehicle)
			departV = 0
		else
			SetVehicleColor(vehicle, RGB(r, v, b))
			departV = 1
			departC = 0
		end
	elseif spawnVeiculePerm == false then
		local x, y, z = GetPlayerLocation(playerid)
		local h = GetPlayerHeading(playerid)
		local vehicle = CreateVehicle(6, x, y, z, h)
		SetPlayerInVehicle(playerid, vehicle)
		if departV == 1 and departC == 0 then
			GetVehicleColor(vehicle)
			departV = 0
		else
			SetVehicleColor(vehicle, RGB(r, v, b))
			departV = 1
			departC = 0
		end
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("7", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and spawnVeiculePerm == true then
		local x, y, z = GetPlayerLocation(playerid)
		local h = GetPlayerHeading(playerid)
		local vehicle = CreateVehicle(7, x, y, z, h)
		SetPlayerInVehicle(playerid, vehicle)
		if departV == 1 and departC == 0 then
			GetVehicleColor(vehicle)
			departV = 0
		else
			SetVehicleColor(vehicle, RGB(r, v, b))
			departV = 1
			departC = 0
		end
	elseif spawnVeiculePerm == false then
		local x, y, z = GetPlayerLocation(playerid)
		local h = GetPlayerHeading(playerid)
		local vehicle = CreateVehicle(7, x, y, z, h)
		SetPlayerInVehicle(playerid, vehicle)
		if departV == 1 and departC == 0 then
			GetVehicleColor(vehicle)
			departV = 0
		else
			SetVehicleColor(vehicle, RGB(r, v, b))
			departV = 1
			departC = 0
		end
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("8", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and spawnVeiculePerm == true then
		local x, y, z = GetPlayerLocation(playerid)
		local h = GetPlayerHeading(playerid)
		local vehicle = CreateVehicle(8, x, y, z, h)
		SetPlayerInVehicle(playerid, vehicle)
		if departV == 1 and departC == 0 then
			GetVehicleColor(vehicle)
			departV = 0
		else
			SetVehicleColor(vehicle, RGB(r, v, b))
			departV = 1
			departC = 0
		end
	elseif spawnVeiculePerm == false then
		local x, y, z = GetPlayerLocation(playerid)
		local h = GetPlayerHeading(playerid)
		local vehicle = CreateVehicle(8, x, y, z, h)
		SetPlayerInVehicle(playerid, vehicle)
		if departV == 1 and departC == 0 then
			GetVehicleColor(vehicle)
			departV = 0
		else
			SetVehicleColor(vehicle, RGB(r, v, b))
			departV = 1
			departC = 0
		end
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("9", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and spawnVeiculePerm == true then
		local x, y, z = GetPlayerLocation(playerid)
		local h = GetPlayerHeading(playerid)
		local vehicle = CreateVehicle(9, x, y, z, h)
		SetPlayerInVehicle(playerid, vehicle)
		if departV == 1 and departC == 0 then
			GetVehicleColor(vehicle)
			departV = 0
		else
			SetVehicleColor(vehicle, RGB(r, v, b))
			departV = 1
			departC = 0
		end
	elseif spawnVeiculePerm == false then
		local x, y, z = GetPlayerLocation(playerid)
		local h = GetPlayerHeading(playerid)
		local vehicle = CreateVehicle(9, x, y, z, h)
		SetPlayerInVehicle(playerid, vehicle)
		if departV == 1 and departC == 0 then
			GetVehicleColor(vehicle)
			departV = 0
		else
			SetVehicleColor(vehicle, RGB(r, v, b))
			departV = 1
			departC = 0
		end
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("10", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and spawnVeiculePerm == true then
		local x, y, z = GetPlayerLocation(playerid)
		local h = GetPlayerHeading(playerid)
		local vehicle = CreateVehicle(10, x, y, z, h)
		SetPlayerInVehicle(playerid, vehicle)
		if departV == 1 and departC == 0 then
			GetVehicleColor(vehicle)
			departV = 0
		else
			SetVehicleColor(vehicle, RGB(r, v, b))
			departV = 1
			departC = 0
		end
	elseif spawnVeiculePerm == false then
		local x, y, z = GetPlayerLocation(playerid)
		local h = GetPlayerHeading(playerid)
		local vehicle = CreateVehicle(10, x, y, z, h)
		SetPlayerInVehicle(playerid, vehicle)
		if departV == 1 and departC == 0 then
			GetVehicleColor(vehicle)
			departV = 0
		else
			SetVehicleColor(vehicle, RGB(r, v, b))
			departV = 1
			departC = 0
		end
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("11", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and spawnVeiculePerm == true then
		local x, y, z = GetPlayerLocation(playerid)
		local h = GetPlayerHeading(playerid)
		local vehicle = CreateVehicle(11, x, y, z, h)
		SetPlayerInVehicle(playerid, vehicle)
		if departV == 1 and departC == 0 then
			GetVehicleColor(vehicle)
			departV = 0
		else
			SetVehicleColor(vehicle, RGB(r, v, b))
			departV = 1
			departC = 0
		end
	elseif spawnVeiculePerm == false then
		local x, y, z = GetPlayerLocation(playerid)
		local h = GetPlayerHeading(playerid)
		local vehicle = CreateVehicle(11, x, y, z, h)
		SetPlayerInVehicle(playerid, vehicle)
		if departV == 1 and departC == 0 then
			GetVehicleColor(vehicle)
			departV = 0
		else
			SetVehicleColor(vehicle, RGB(r, v, b))
			departV = 1
			departC = 0
		end
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("12", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and spawnVeiculePerm == true then
		local x, y, z = GetPlayerLocation(playerid)
		local h = GetPlayerHeading(playerid)
		local vehicle = CreateVehicle(12, x, y, z, h)
		SetPlayerInVehicle(playerid, vehicle)
		if departV == 1 and departC == 0 then
			GetVehicleColor(vehicle)
			departV = 0
		else
			SetVehicleColor(vehicle, RGB(r, v, b))
			departV = 1
			departC = 0
		end
	elseif spawnVeiculePerm == false then
		local x, y, z = GetPlayerLocation(playerid)
		local h = GetPlayerHeading(playerid)
		local vehicle = CreateVehicle(12, x, y, z, h)
		SetPlayerInVehicle(playerid, vehicle)
		if departV == 1 and departC == 0 then
			GetVehicleColor(vehicle)
			departV = 0
		else
			SetVehicleColor(vehicle, RGB(r, v, b))
			departV = 1
			departC = 0
		end
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("13", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and spawnVeiculePerm == true then
		local x, y, z = GetPlayerLocation(playerid)
		local h = GetPlayerHeading(playerid)
		local vehicle = CreateVehicle(13, x, y, z, h)
		SetPlayerInVehicle(playerid, vehicle)
		if departV == 1 and departC == 0 then
			GetVehicleColor(vehicle)
			departV = 0
		else
			SetVehicleColor(vehicle, RGB(r, v, b))
			departV = 1
			departC = 0
		end
	elseif spawnVeiculePerm == false then
		local x, y, z = GetPlayerLocation(playerid)
		local h = GetPlayerHeading(playerid)
		local vehicle = CreateVehicle(13, x, y, z, h)
		SetPlayerInVehicle(playerid, vehicle)
		if departV == 1 and departC == 0 then
			GetVehicleColor(vehicle)
			departV = 0
		else
			SetVehicleColor(vehicle, RGB(r, v, b))
			departV = 1
			departC = 0
		end
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("14", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and spawnVeiculePerm == true then
		local x, y, z = GetPlayerLocation(playerid)
		local h = GetPlayerHeading(playerid)
		local vehicle = CreateVehicle(14, x, y, z, h)
		SetPlayerInVehicle(playerid, vehicle)
		if departV == 1 and departC == 0 then
			GetVehicleColor(vehicle)
			departV = 0
		else
			SetVehicleColor(vehicle, RGB(r, v, b))
			departV = 1
			departC = 0
		end
	elseif spawnVeiculePerm == false then
		local x, y, z = GetPlayerLocation(playerid)
		local h = GetPlayerHeading(playerid)
		local vehicle = CreateVehicle(14, x, y, z, h)
		SetPlayerInVehicle(playerid, vehicle)
		if departV == 1 and departC == 0 then
			GetVehicleColor(vehicle)
			departV = 0
		else
			SetVehicleColor(vehicle, RGB(r, v, b))
			departV = 1
			departC = 0
		end
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("15", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and spawnVeiculePerm == true then
		local x, y, z = GetPlayerLocation(playerid)
		local h = GetPlayerHeading(playerid)
		local vehicle = CreateVehicle(15, x, y, z, h)
		SetPlayerInVehicle(playerid, vehicle)
		if departV == 1 and departC == 0 then
			GetVehicleColor(vehicle)
			departV = 0
		else
			SetVehicleColor(vehicle, RGB(r, v, b))
			departV = 1
			departC = 0
		end
	elseif spawnVeiculePerm == false then
		local x, y, z = GetPlayerLocation(playerid)
		local h = GetPlayerHeading(playerid)
		local vehicle = CreateVehicle(15, x, y, z, h)
		SetPlayerInVehicle(playerid, vehicle)
		if departV == 1 and departC == 0 then
			GetVehicleColor(vehicle)
			departV = 0
		else
			SetVehicleColor(vehicle, RGB(r, v, b))
			departV = 1
			departC = 0
		end
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("16", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and spawnVeiculePerm == true then
		local x, y, z = GetPlayerLocation(playerid)
		local h = GetPlayerHeading(playerid)
		local vehicle = CreateVehicle(16, x, y, z, h)
		SetPlayerInVehicle(playerid, vehicle)
		if departV == 1 and departC == 0 then
			GetVehicleColor(vehicle)
			departV = 0
		else
			SetVehicleColor(vehicle, RGB(r, v, b))
			departV = 1
			departC = 0
		end
	elseif spawnVeiculePerm == false then
		local x, y, z = GetPlayerLocation(playerid)
		local h = GetPlayerHeading(playerid)
		local vehicle = CreateVehicle(16, x, y, z, h)
		SetPlayerInVehicle(playerid, vehicle)
		if departV == 1 and departC == 0 then
			GetVehicleColor(vehicle)
			departV = 0
		else
			SetVehicleColor(vehicle, RGB(r, v, b))
			departV = 1
			departC = 0
		end
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("17", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and spawnVeiculePerm == true then
		local x, y, z = GetPlayerLocation(playerid)
		local h = GetPlayerHeading(playerid)
		local vehicle = CreateVehicle(17, x, y, z, h)
		SetPlayerInVehicle(playerid, vehicle)
		if departV == 1 and departC == 0 then
			GetVehicleColor(vehicle)
			departV = 0
		else
			SetVehicleColor(vehicle, RGB(r, v, b))
			departV = 1
			departC = 0
		end
	elseif spawnVeiculePerm == false then
		local x, y, z = GetPlayerLocation(playerid)
		local h = GetPlayerHeading(playerid)
		local vehicle = CreateVehicle(17, x, y, z, h)
		SetPlayerInVehicle(playerid, vehicle)
		if departV == 1 and departC == 0 then
			GetVehicleColor(vehicle)
			departV = 0
		else
			SetVehicleColor(vehicle, RGB(r, v, b))
			departV = 1
			departC = 0
		end
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("18", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and spawnVeiculePerm == true then
		local x, y, z = GetPlayerLocation(playerid)
		local h = GetPlayerHeading(playerid)
		local vehicle = CreateVehicle(18, x, y, z, h)
		SetPlayerInVehicle(playerid, vehicle)
		if departV == 1 and departC == 0 then
			GetVehicleColor(vehicle)
			departV = 0
		else
			SetVehicleColor(vehicle, RGB(r, v, b))
			departV = 1
			departC = 0
		end
	elseif spawnVeiculePerm == false then
		local x, y, z = GetPlayerLocation(playerid)
		local h = GetPlayerHeading(playerid)
		local vehicle = CreateVehicle(18, x, y, z, h)
		SetPlayerInVehicle(playerid, vehicle)
		if departV == 1 and departC == 0 then
			GetVehicleColor(vehicle)
			departV = 0
		else
			SetVehicleColor(vehicle, RGB(r, v, b))
			departV = 1
			departC = 0
		end
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("19", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and spawnVeiculePerm == true then
		local x, y, z = GetPlayerLocation(playerid)
		local h = GetPlayerHeading(playerid)
		local vehicle = CreateVehicle(19, x, y, z, h)
		SetPlayerInVehicle(playerid, vehicle)
		if departV == 1 and departC == 0 then
			GetVehicleColor(vehicle)
			departV = 0
		else
			SetVehicleColor(vehicle, RGB(r, v, b))
			departV = 1
			departC = 0
		end
	elseif spawnVeiculePerm == false then
		local x, y, z = GetPlayerLocation(playerid)
		local h = GetPlayerHeading(playerid)
		local vehicle = CreateVehicle(19, x, y, z, h)
		SetPlayerInVehicle(playerid, vehicle)
		if departV == 1 and departC == 0 then
			GetVehicleColor(vehicle)
			departV = 0
		else
			SetVehicleColor(vehicle, RGB(r, v, b))
			departV = 1
			departC = 0
		end
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("20", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and spawnVeiculePerm == true then
		local x, y, z = GetPlayerLocation(playerid)
		local h = GetPlayerHeading(playerid)
		local vehicle = CreateVehicle(20, x, y, z, h)
		SetPlayerInVehicle(playerid, vehicle)
		if departV == 1 and departC == 0 then
			GetVehicleColor(vehicle)
			departV = 0
		else
			SetVehicleColor(vehicle, RGB(r, v, b))
			departV = 1
			departC = 0
		end
	elseif spawnVeiculePerm == false then
		local x, y, z = GetPlayerLocation(playerid)
		local h = GetPlayerHeading(playerid)
		local vehicle = CreateVehicle(20, x, y, z, h)
		SetPlayerInVehicle(playerid, vehicle)
		if departV == 1 and departC == 0 then
			GetVehicleColor(vehicle)
			departV = 0
		else
			SetVehicleColor(vehicle, RGB(r, v, b))
			departV = 1
			departC = 0
		end
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("21", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and spawnVeiculePerm == true then
		local x, y, z = GetPlayerLocation(playerid)
		local h = GetPlayerHeading(playerid)
		local vehicle = CreateVehicle(21, x, y, z, h)
		SetPlayerInVehicle(playerid, vehicle)
		if departV == 1 and departC == 0 then
			GetVehicleColor(vehicle)
			departV = 0
		else
			SetVehicleColor(vehicle, RGB(r, v, b))
			departV = 1
			departC = 0
		end
	elseif spawnVeiculePerm == false then
		local x, y, z = GetPlayerLocation(playerid)
		local h = GetPlayerHeading(playerid)
		local vehicle = CreateVehicle(21, x, y, z, h)
		SetPlayerInVehicle(playerid, vehicle)
		if departV == 1 and departC == 0 then
			GetVehicleColor(vehicle)
			departV = 0
		else
			SetVehicleColor(vehicle, RGB(r, v, b))
			departV = 1
			departC = 0
		end
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("22", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and spawnVeiculePerm == true then
		local x, y, z = GetPlayerLocation(playerid)
		local h = GetPlayerHeading(playerid)
		local vehicle = CreateVehicle(22, x, y, z, h)
		SetPlayerInVehicle(playerid, vehicle)
		if departV == 1 and departC == 0 then
			GetVehicleColor(vehicle)
			departV = 0
		else
			SetVehicleColor(vehicle, RGB(r, v, b))
			departV = 1
			departC = 0
		end
	elseif spawnVeiculePerm == false then
		local x, y, z = GetPlayerLocation(playerid)
		local h = GetPlayerHeading(playerid)
		local vehicle = CreateVehicle(22, x, y, z, h)
		SetPlayerInVehicle(playerid, vehicle)
		if departV == 1 and departC == 0 then
			GetVehicleColor(vehicle)
			departV = 0
		else
			SetVehicleColor(vehicle, RGB(r, v, b))
			departV = 1
			departC = 0
		end
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("23", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and spawnVeiculePerm == true then
		local x, y, z = GetPlayerLocation(playerid)
		local h = GetPlayerHeading(playerid)
		local vehicle = CreateVehicle(23, x, y, z, h)
		SetPlayerInVehicle(playerid, vehicle)
		if departV == 1 and departC == 0 then
			GetVehicleColor(vehicle)
			departV = 0
		else
			SetVehicleColor(vehicle, RGB(r, v, b))
			departV = 1
			departC = 0
		end
	elseif spawnVeiculePerm == false then
		local x, y, z = GetPlayerLocation(playerid)
		local h = GetPlayerHeading(playerid)
		local vehicle = CreateVehicle(23, x, y, z, h)
		SetPlayerInVehicle(playerid, vehicle)
		if departV == 1 and departC == 0 then
			GetVehicleColor(vehicle)
			departV = 0
		else
			SetVehicleColor(vehicle, RGB(r, v, b))
			departV = 1
			departC = 0
		end
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("24", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and spawnVeiculePerm == true then
		local x, y, z = GetPlayerLocation(playerid)
		local h = GetPlayerHeading(playerid)
		local vehicle = CreateVehicle(24, x, y, z, h)
		SetPlayerInVehicle(playerid, vehicle)
		if departV == 1 and departC == 0 then
			GetVehicleColor(vehicle)
			departV = 0
		else
			SetVehicleColor(vehicle, RGB(r, v, b))
			departV = 1
			departC = 0
		end
	elseif spawnVeiculePerm == false then
		local x, y, z = GetPlayerLocation(playerid)
		local h = GetPlayerHeading(playerid)
		local vehicle = CreateVehicle(24, x, y, z, h)
		SetPlayerInVehicle(playerid, vehicle)
		if departV == 1 and departC == 0 then
			GetVehicleColor(vehicle)
			departV = 0
		else
			SetVehicleColor(vehicle, RGB(r, v, b))
			departV = 1
			departC = 0
		end
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("25", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and spawnVeiculePerm == true then
		local x, y, z = GetPlayerLocation(playerid)
		local h = GetPlayerHeading(playerid)
		local vehicle = CreateVehicle(25, x, y, z, h)
		SetPlayerInVehicle(playerid, vehicle)
		if departV == 1 and departC == 0 then
			GetVehicleColor(vehicle)
			departV = 0
		else
			SetVehicleColor(vehicle, RGB(r, v, b))
			departV = 1
			departC = 0
		end
	elseif spawnVeiculePerm == false then
		local x, y, z = GetPlayerLocation(playerid)
		local h = GetPlayerHeading(playerid)
		local vehicle = CreateVehicle(25, x, y, z, h)
		SetPlayerInVehicle(playerid, vehicle)
		if departV == 1 and departC == 0 then
			GetVehicleColor(vehicle)
			departV = 0
		else
			SetVehicleColor(vehicle, RGB(r, v, b))
			departV = 1
			departC = 0
		end
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)

AddRemoteEvent("Wearpon1", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and WearponPerm == true then
		SetPlayerWeapon(playerid, 2, 64, true, 1 , true);
	elseif WearponPerm == false then
		SetPlayerWeapon(playerid, 2, 64, true, 1 , true);
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("Wearpon2", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and WearponPerm == true then
		SetPlayerWeapon(playerid, 3, 64, true, 1 , true);
	elseif WearponPerm == false then
		SetPlayerWeapon(playerid, 3, 64, true, 1 , true);
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("Wearpon3", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and WearponPerm == true then
		SetPlayerWeapon(playerid, 4, 64, true, 1 , true);
	elseif WearponPerm == false then
		SetPlayerWeapon(playerid, 4, 64, true, 1 , true);
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("Wearpon4", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and WearponPerm == true then
		SetPlayerWeapon(playerid, 5, 64, true, 1 , true);
	elseif WearponPerm == false then
		SetPlayerWeapon(playerid, 5, 64, true, 1 , true);
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("Wearpon5", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and WearponPerm == true then
		SetPlayerWeapon(playerid, 6, 64, true, 1 , true);
	elseif WearponPerm == false then
		SetPlayerWeapon(playerid, 6, 64, true, 1 , true);
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("Wearpon6", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and WearponPerm == true then
		SetPlayerWeapon(playerid, 7, 64, true, 1 , true);
	elseif WearponPerm == false then
		SetPlayerWeapon(playerid, 7, 64, true, 1 , true);
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("Wearpon7", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and WearponPerm == true then
		SetPlayerWeapon(playerid, 8, 64, true, 1 , true);
	elseif WearponPerm == false then
		SetPlayerWeapon(playerid, 8, 64, true, 1 , true);
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("Wearpon8", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and WearponPerm == true then
		SetPlayerWeapon(playerid, 9, 64, true, 1 , true);
	elseif WearponPerm == false then
		SetPlayerWeapon(playerid, 9, 64, true, 1 , true);
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("Wearpon9", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and WearponPerm == true then
		SetPlayerWeapon(playerid, 10, 64, true, 1 , true);
	elseif WearponPerm == false then
		SetPlayerWeapon(playerid, 10, 64, true, 1 , true);
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("Wearpon10", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and WearponPerm == true then
		SetPlayerWeapon(playerid, 11, 64, true, 1 , true);
	elseif WearponPerm == false then
		SetPlayerWeapon(playerid, 11, 64, true, 1 , true);
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("Wearpon11", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and WearponPerm == true then
		SetPlayerWeapon(playerid, 12, 64, true, 1 , true);
	elseif WearponPerm == false then
		SetPlayerWeapon(playerid, 12, 64, true, 1 , true);
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("Wearpon12", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and WearponPerm == true then
		SetPlayerWeapon(playerid, 13, 64, true, 1 , true);
	elseif WearponPerm == false then
		SetPlayerWeapon(playerid, 13, 64, true, 1 , true);
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("Wearpon13", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and WearponPerm == true then
		SetPlayerWeapon(playerid, 14, 64, true, 1 , true);
	elseif WearponPerm == false then
		SetPlayerWeapon(playerid, 14, 64, true, 1 , true);
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("Wearpon14", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and WearponPerm == true then
		SetPlayerWeapon(playerid, 15, 64, true, 1 , true);
	elseif WearponPerm == false then
		SetPlayerWeapon(playerid, 15, 64, true, 1 , true);
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("Wearpon15", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and WearponPerm == true then
		SetPlayerWeapon(playerid, 16, 64, true, 1 , true);
	elseif WearponPerm == false then
		SetPlayerWeapon(playerid, 16, 64, true, 1 , true);
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("Wearpon16", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and WearponPerm == true then
		SetPlayerWeapon(playerid, 17, 64, true, 1 , true);
	elseif WearponPerm == false then
		SetPlayerWeapon(playerid, 17, 64, true, 1 , true);
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("Wearpon17", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and WearponPerm == true then
		SetPlayerWeapon(playerid, 18, 64, true, 1 , true);
	elseif WearponPerm == false then
		SetPlayerWeapon(playerid, 18, 64, true, 1 , true);
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("Wearpon18", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and WearponPerm == true then
		SetPlayerWeapon(playerid, 19, 64, true, 1 , true);
	elseif WearponPerm == false then
		SetPlayerWeapon(playerid, 19, 64, true, 1 , true);
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("Wearpon19", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and WearponPerm == true then
		SetPlayerWeapon(playerid, 20, 64, true, 1 , true);
	elseif WearponPerm == false then
		SetPlayerWeapon(playerid, 20, 64, true, 1 , true);
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)



AddRemoteEvent("AttachPlayerParachute", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and parachutePerm == true then
		AttachPlayerParachute(playerid, true);
	elseif parachutePerm == false then
		AttachPlayerParachute(playerid, true);
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)
AddRemoteEvent("foreground", function(playerid)
	SetPlayerLocation(playerid, x+100, y, z, 1);
end)

animationName = {
	"STOP",
	"COMBINE",
	"PICKUP_LOWER",
	"PICKUP_MIDDLE",
	"PICKUP_UPPER",
	"HANDSHEAD_KNEEL",
	"HANDSHEAD_STAND",
	"HANDSUP_KNEEL",
	"HANDSUP_STAND",
	"ENTERCODE",
	"VOMIT",
	"CROSSARMS",
	"DABSAREGAY",
	"DONTKNOW",
	"DUSTOFF",
	"FACEPALM",
	"IDONTLISTEN",
	"FLEXX",
	"HALTSTOP",
	"INEAR_COMM",
	"ITSJUSTRIGHT",
	"FALLONKNEES",
	"KUNGFU",
	"CALLME",
	"SALUTE",
	"SHOOSH",
	"SLAPOWNASS",
	"SLAPOWNASS2",
	"THROATSLIT",
	"THUMBSUP",
	"WAVE3",
	"WIPEOFFSWEAT",
	"KICKDOOR",
	"LOCKDOOR",
	"CRAZYMAN",
	"DARKSOULS",
	"SMOKING",
	"CLAP",
	"SIT01",
	"SIT02",
	"SIT03",
	"SIT04",
	"SIT05",
	"SIT06",
	"SIT07",
	"LAY01",
	"LAY02",
	"LAY03",
	"LAY04",
	"LAY05",
	"LAY06",
	"LAY07",
	"LAY08",
	"LAY09",
	"LAY10",
	"LAY11",
	"LAY12",
	"LAY13",
	"LAY14",
	"LAY15",
	"LAY16",
	"LAY17",
	"LAY18",
	"WAVE",
	"WAVE2",
	"STRETCH",
	"BOW",
	"CALL_GUARDS",
	"CALL_SOMEONE",
	"CALL_SOMEONE2",
	"CHECK_EQUIPMENT",
	"CHECK_EQUIPMENT2",
	"CHECK_EQUIPMENT3",
	"CLAP2",
	"CLAP3",
	"CHEER",
	"DRUNK",
	"FIX_STUFF",
	"GET_HERE",
	"GET_HERE2",
	"GOAWAY",
	"LAUGH",
	"SALUTE2",
	"THINKING",
	"THROW",
	"TRIUMPH",
	"WASH_WINDOWS",
	"WATCHING",
	"DANCE01",
	"DANCE02",
	"DANCE03",
	"DANCE04",
	"DANCE05",
	"DANCE06",
	"DANCE07",
	"DANCE08",
	"DANCE09",
	"DANCE10",
	"DANCE11",
	"DANCE12",
	"DANCE13",
	"DANCE14",
	"DANCE15",
	"DANCE16",
	"DANCE17",
	"DANCE18",
	"DANCE19",
	"DANCE20",
	"CUFF",
	"CUFF2",
	"REVIVE",
	"PICKAXE_SWING",
	"CROSSARMS2",
	"BARCLEAN01",
	"BARCLEAN02",
	"PHONE_PUTAWAY",
	"PHONE_TAKEOUT",
	"PHONE_TALKING01",
	"PHONE_TALKING02",
	"PHONE_TALKING03",
	"DRINKING",
	"SHRUG",
	"SMOKING01",
	"SMOKING02",
	"SMOKING03",
	"THINKING01",
	"WALLLEAN01",
	"WALLLEAN02",
	"WALLLEAN03",
	"WALLLEAN04",
	"YAWN",
	"FISHING",
	"PHONE_TAKEOUT_HOLD",
	"PHONE_HOLD",
	"SHOUT01",
	"CART_IDLE",
	"CARRY_IDLE",
	"CARRY_SETDOWN",
	"CARRY_SHOULDER_IDLE",
	"CARRY_SHOULDER_SETDOWN",
	"HANDSHAKE",
	"PUSHUP_START",
	"PUSHUP_IDLE",
	"PUSHUP_END",
	"SLAP01",
	"SLAP01_REACT"
};

for i = -0, 147 do
	AddRemoteEvent("A"..i, function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and animationPerm == true then
		SetPlayerAnimation(playerid, animationName[i]);
	elseif animationPerm == false then
		SetPlayerAnimation(playerid, animationName[i]);
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
    end)
end


AddRemoteEvent("into", function(playerid)
	local idSteam = GetPlayerSteamId(playerid)
	if webListFun(weblist, idSteam) and intoPerm == true then
		local h = 1;
		local x, y, z = GetPlayerLocation(playerid)
		SetPlayerLocation(playerid, x, y, 100000, h);
	elseif intoPerm == false then
		local h = 1;
		local x, y, z = GetPlayerLocation(playerid)
		SetPlayerLocation(playerid, x, y, 100000, h);
	else
		AddPlayerChat(playerid, "you don't have permission")
		print(webListFun(weblist, idSteam))
	end
end)