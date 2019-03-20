local Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
	["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

local CurrentlyTowedVehicle   = nil
local CurrentlyTowedVehicle2   = nil
local CurrentlyTowedVehicle3   = nil
local CurrentlyTowedVehicle4   = nil
local CurrentlyTowedVehicle5   = nil
local CurrentlyTowedVehicle6   = nil
local CurrentlyTowedVehicle7   = nil
local CurrentlyTowedVehicle8   = nil
local GotTrailer = 0
local TrailerHandle = 0
local oldtrailer = 0
local oldtrailermodel = 0
-- local currentfrozenvehicle = 0
local IsFrozenEntity1 = false
Citizen.CreateThread(function()
	while true do

		Wait(0)
		local myPed = GetPlayerPed(-1)
		local myCoord = GetEntityCoords(myPed)
		local currentVehicle = GetVehiclePedIsIn(myPed, 0)
		
		local GotTrailer, TrailerHandle = GetVehicleTrailerVehicle(GetVehiclePedIsIn(myPed, 1))
		if TrailerHandle ~= 0 then
			oldtrailer = TrailerHandle
			oldtrailermodel = GetEntityModel(oldtrailer)
		end

		local trailercoords = GetEntityCoords(oldtrailer)
		if oldtrailermodel == 2078290630 then -- bigtrailer
			if currentVehicle == 0 then -- a pied
				if oldtrailer ~= 0 then
					local coords = GetOffsetFromEntityInWorldCoords(oldtrailer, -2.0, -6.0, 0)
					local coords2 = GetOffsetFromEntityInWorldCoords(oldtrailer, 0.0, -11.0, -1.0)
					local dist = GetDistanceBetweenCoords(myCoord.x, myCoord.y, myCoord.z, coords.x, coords.y, coords.z, true)
					if dist < 5 then
						DrawMarker(1, coords.x, coords.y, coords.z, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 255, 0, 0, 200, 0, 0, 0, 0)
						DrawMarker(1, coords2.x, coords2.y, coords2.z, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 255, 0, 0, 200, 0, 0, 0, 0)
						-- FreezeEntityPosition
						if dist < 1 then
							SetTextComponentFormat("STRING")
							AddTextComponentString(_U("open_tow_menu"))
							DisplayHelpTextFromStringLabel(0, 0, 1, -1)
							if IsControlJustPressed(1, Keys["E"]) then
								OpenVehiculeMenu(oldtrailer, coords2)
							end
						else
							ESX.UI.Menu.CloseAll()
						end
					end
				end
			end
		elseif oldtrailermodel == 712162987 then -- small trailer
			if currentVehicle == 0 then -- a pied
				if oldtrailer ~= 0 then
					local coords = GetOffsetFromEntityInWorldCoords(oldtrailer, -1.5, -3.2, 0)
					local coords2 = GetOffsetFromEntityInWorldCoords(oldtrailer, 0.0, -5.0, -1.0)
					local dist = GetDistanceBetweenCoords(myCoord.x, myCoord.y, myCoord.z, coords.x, coords.y, coords.z, true)
					if dist < 5 then
						DrawMarker(1, coords.x, coords.y, coords.z, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 255, 0, 0, 200, 0, 0, 0, 0)
						DrawMarker(1, coords2.x, coords2.y, coords2.z, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 255, 0, 0, 200, 0, 0, 0, 0)
						if dist < 1 then
							SetTextComponentFormat("STRING")
							if CurrentlyTowedVehicle7 == nil then								
								AddTextComponentString(_U("attach_vehicle"))
							else
								AddTextComponentString(_U("detach_vehicle"))
							end
							DisplayHelpTextFromStringLabel(0, 0, 1, -1)
							if IsControlJustPressed(1, Keys["E"]) then
								local clostestvehicle = GetClosestVehicle(coords2.x, coords2.y, coords2.z, 2.0, 0, 127)
								local modelhash = GetEntityModel(clostestvehicle)
								if CurrentlyTowedVehicle7 == nil then
									if Config.Cartrailer[modelhash] ~= nil then
										AttachEntityToEntity(clostestvehicle, oldtrailer, 20, 0.0, Config.Cartrailer[modelhash].ypos, Config.Cartrailer[modelhash].zpos, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
									else
										AttachEntityToEntity(clostestvehicle, oldtrailer, 20, 0.0, -1.1, 0.6, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
									end
									CurrentlyTowedVehicle7 = clostestvehicle
								else
									AttachEntityToEntity(CurrentlyTowedVehicle7, oldtrailer, 20, 0.0, -6.0, 0.3, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
									DetachEntity(CurrentlyTowedVehicle7, true, true)
									CurrentlyTowedVehicle7 = nil
								end
							end
						end
					end
				end
			end	
		elseif oldtrailermodel == 524108981 then -- boat trailer
			if currentVehicle == 0 then -- a pied
				if oldtrailer ~= 0 then
					local coords = GetOffsetFromEntityInWorldCoords(oldtrailer, -2.0, -3.0, 0)
					local coords2 = GetOffsetFromEntityInWorldCoords(oldtrailer, 0.0, -6.0, -1.0)
					local dist = GetDistanceBetweenCoords(myCoord.x, myCoord.y, myCoord.z, coords.x, coords.y, coords.z, true)
					if dist < 5 then
						DrawMarker(1, coords.x, coords.y, coords.z, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 255, 0, 0, 200, 0, 0, 0, 0)
						DrawMarker(1, coords2.x, coords2.y, coords2.z, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 255, 0, 0, 200, 0, 0, 0, 0)
						if dist < 1 then
							SetTextComponentFormat("STRING")
							if CurrentlyTowedVehicle8 == nil then
								AddTextComponentString(_U("attach_vehicle"))
							else
								AddTextComponentString(_U("detach_vehicle"))
							end
							DisplayHelpTextFromStringLabel(0, 0, 1, -1)
							if IsControlJustPressed(1, Keys["E"]) then
								local clostestvehicle = GetClosestVehicle(coords2.x, coords2.y, coords2.z, 2.0, 0, 12294)
								local modelhash = GetEntityModel(clostestvehicle)
								local isboat = false
								if IsThisModelABoat(modelhash) then
									isboat = true
								else
									isboat = false
								end
								if CurrentlyTowedVehicle8 == nil and isboat then
									if Config.Boattrailer[modelhash] ~= nil then
										AttachEntityToEntity(clostestvehicle, oldtrailer, 20, 0.0, Config.Boattrailer[modelhash].ypos, Config.Boattrailer[modelhash].zpos, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
									else
										AttachEntityToEntity(clostestvehicle, oldtrailer, 20, 0.0, -0.6, 0.3, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
									end
									
									CurrentlyTowedVehicle8 = clostestvehicle
								else
									AttachEntityToEntity(CurrentlyTowedVehicle8, oldtrailer, 20, 0.0, -7.0, 0.3, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
									DetachEntity(CurrentlyTowedVehicle8, true, true)
									CurrentlyTowedVehicle8 = nil
								end
							end
						end
					end
				end
			end	
		end
		if IsControlJustPressed(1, Keys['B']) then
			local playerVeh = GetVehiclePedIsIn(myPed, true)
			GotTrailer, TrailerHandle = GetVehicleTrailerVehicle(playerVeh)
			DetachVehicleFromTrailer(playerVeh)
		end
	end
end)

function OpenVehiculeMenu(oldtrailer, coords2)

	ESX.UI.Menu.CloseAll()
	local elements = {}
	
	
	if porteCapotOuvert then
		table.insert(elements, {label = _U("close_plateau"),	value = 'FermeturePlateau'})
	else
		table.insert(elements, {label = _U("open_plateau"),		value = 'OuverturePlateau'})
	end
	
	if porteCoffreOuvert then
		table.insert(elements, {label = _U("open_rampe"),	value = 'FermetureRampe'})
	else
		table.insert(elements, {label = _U("close_rampe"),		value = 'OuvertureRampe'})
	end	
	
	table.insert(elements, {label = _U("up_front_car"),	value = 'VoitureAvantBas'})
	table.insert(elements, {label = _U("up_middle_car"),	value = 'VoitureMilieuBas'})
	table.insert(elements, {label = _U("up_back_car"),	value = 'VoitureArriereBas'})
	table.insert(elements, {label = _U("down_front_car"),	value = 'VoitureAvantHaut'})
	table.insert(elements, {label = _U("down_middle_car"),	value = 'VoitureMilieuHaut'})
	table.insert(elements, {label = _U("down_back_car"),	value = 'VoitureArriereHaut'})
	

	ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'menuperso_vehicule',
		{
			img    = 'menu_vehicule',
			-- title    = 'Véhicule',
			align    = 'top-left',
			elements = elements
		},
		function(data, menu)


--------------------- OUVRIR LES PORTES

			if data.current.value == 'OuverturePlateau' then
				porteCapotOuvert = true
				SetVehicleDoorOpen(oldtrailer, 4, false, false)
				OpenVehiculeMenu(oldtrailer, coords2)
			elseif data.current.value == 'OuvertureRampe' then
				porteCoffreOuvert = true
				SetVehicleDoorOpen(oldtrailer, 5, false, false)
				OpenVehiculeMenu(oldtrailer, coords2)

--------------------- FERMER LES PORTES

			elseif data.current.value == 'FermeturePlateau' then
				porteCapotOuvert = false
				SetVehicleDoorShut(oldtrailer, 4, false, false)
				OpenVehiculeMenu(oldtrailer, coords2)
			elseif data.current.value == 'FermetureRampe' then
				porteCoffreOuvert = false
				SetVehicleDoorShut(oldtrailer, 5, false, false)
				OpenVehiculeMenu(oldtrailer, coords2)
--------------------- voitures en bas

			elseif data.current.value == 'VoitureAvantBas' then
				----------- avant en bas
				local clostestvehicle = GetClosestVehicle(coords2.x, coords2.y, coords2.z, 2.0, 0, 127)
				local modelhash = GetEntityModel(clostestvehicle)
				if CurrentlyTowedVehicle == nil then
					if Config.Trucktrailer.VoitureAvantBas[modelhash] ~= nil then
						AttachEntityToEntity(clostestvehicle, oldtrailer, 1, Config.Trucktrailer.VoitureAvantBas[modelhash].xpos, Config.Trucktrailer.VoitureAvantBas[modelhash].ypos, Config.Trucktrailer.VoitureAvantBas[modelhash].zpos, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
					else
						AttachEntityToEntity(clostestvehicle, oldtrailer, 1, -0.6, 13.0, 1.5, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
					end
					CurrentlyTowedVehicle = clostestvehicle
				else
					AttachEntityToEntity(CurrentlyTowedVehicle, oldtrailer, 1, 0.0, -6.0, 0.3, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
					DetachEntity(CurrentlyTowedVehicle, true, true)
					CurrentlyTowedVehicle = nil
				end
				----------- avant en bas
			elseif data.current.value == 'VoitureMilieuBas' then
				----------- au milieu en bas
				local clostestvehicle = GetClosestVehicle(coords2.x, coords2.y, coords2.z, 2.0, 0, 127)
				local modelhash = GetEntityModel(clostestvehicle)
				if CurrentlyTowedVehicle2 == nil then
					if Config.Trucktrailer.VoitureMilieuBas[modelhash] ~= nil then
						AttachEntityToEntity(clostestvehicle, oldtrailer, 1, Config.Trucktrailer.VoitureMilieuBas[modelhash].xpos, Config.Trucktrailer.VoitureMilieuBas[modelhash].ypos, Config.Trucktrailer.VoitureMilieuBas[modelhash].zpos, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
					else
						AttachEntityToEntity(clostestvehicle, oldtrailer, 1, -0.6, 7.5, 1.5, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
					end
					CurrentlyTowedVehicle2 = clostestvehicle
				else
					AttachEntityToEntity(CurrentlyTowedVehicle2, oldtrailer, 1, 0.0, -6.0, 0.3, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
					DetachEntity(CurrentlyTowedVehicle2, true, true)
					CurrentlyTowedVehicle2 = nil
				end
				----------- au milieu en bas
			elseif data.current.value == 'VoitureArriereBas' then
				----------- arriere en bas
				local clostestvehicle = GetClosestVehicle(coords2.x, coords2.y, coords2.z, 2.0, 0, 127)
				local modelhash = GetEntityModel(clostestvehicle)
				if CurrentlyTowedVehicle3 == nil then
					if Config.Trucktrailer.VoitureArriereBas[modelhash] ~= nil then
						AttachEntityToEntity(clostestvehicle, oldtrailer, 1, Config.Trucktrailer.VoitureArriereBas[modelhash].xpos, Config.Trucktrailer.VoitureArriereBas[modelhash].ypos, Config.Trucktrailer.VoitureArriereBas[modelhash].zpos, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
					else
						AttachEntityToEntity(clostestvehicle, oldtrailer, 1, -0.6, 2.5, 1.5, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
					end
					CurrentlyTowedVehicle3 = clostestvehicle
				else
					AttachEntityToEntity(CurrentlyTowedVehicle2, oldtrailer, 1, 0.0, -6.0, 0.3, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
					DetachEntity(CurrentlyTowedVehicle3, true, true)
					CurrentlyTowedVehicle3 = nil
				end
				----------- arriere en bas

--------------------- voitures en haut

			elseif data.current.value == 'VoitureAvantHaut' then
				----------- avant en haut
				local clostestvehicle = GetClosestVehicle(coords2.x, coords2.y, coords2.z, 2.0, 0, 127)
				local modelhash = GetEntityModel(clostestvehicle)
				if CurrentlyTowedVehicle4 == nil then
					if Config.Trucktrailer.VoitureAvantHaut[modelhash] ~= nil then
						AttachEntityToEntity(clostestvehicle, oldtrailer, 1, Config.Trucktrailer.VoitureAvantHaut[modelhash].xpos, Config.Trucktrailer.VoitureAvantHaut[modelhash].ypos, Config.Trucktrailer.VoitureAvantHaut[modelhash].zpos, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
					else
						AttachEntityToEntity(clostestvehicle, oldtrailer, 1, -0.6, 13.0, 3.5, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
					end
					CurrentlyTowedVehicle4 = clostestvehicle
				else
					AttachEntityToEntity(CurrentlyTowedVehicle4, oldtrailer, 1, 0.0, -6.0, 0.3, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
					DetachEntity(CurrentlyTowedVehicle4, true, true)
					CurrentlyTowedVehicle4 = nil
				end
				----------- avant en haut
			elseif data.current.value == 'VoitureMilieuHaut' then
				----------- au milieu en haut
				local clostestvehicle = GetClosestVehicle(coords2.x, coords2.y, coords2.z, 2.0, 0, 127)
				local modelhash = GetEntityModel(clostestvehicle)
				if CurrentlyTowedVehicle5 == nil then
					if Config.Trucktrailer.VoitureMilieuHaut[modelhash] ~= nil then
						AttachEntityToEntity(clostestvehicle, oldtrailer, 1, Config.Trucktrailer.VoitureMilieuHaut[modelhash].xpos, Config.Trucktrailer.VoitureMilieuHaut[modelhash].ypos, Config.Trucktrailer.VoitureMilieuHaut[modelhash].zpos, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
					else
						AttachEntityToEntity(clostestvehicle, oldtrailer, 1, -0.6, 7.5, 3.5, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
					end
					CurrentlyTowedVehicle5 = clostestvehicle
				else
					AttachEntityToEntity(CurrentlyTowedVehicle5, oldtrailer, 1, 0.0, -6.0, 0.3, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
					DetachEntity(CurrentlyTowedVehicle5, true, true)
					CurrentlyTowedVehicle5 = nil
				end
				----------- au milieu en haut
			elseif data.current.value == 'VoitureArriereHaut' then
				----------- arriere en haut
				local clostestvehicle = GetClosestVehicle(coords2.x, coords2.y, coords2.z, 2.0, 0, 127)
				local modelhash = GetEntityModel(clostestvehicle)
				if CurrentlyTowedVehicle6 == nil then
					if Config.Trucktrailer.VoitureArriereHaut[modelhash] ~= nil then
						AttachEntityToEntity(clostestvehicle, oldtrailer, 1, Config.Trucktrailer.VoitureArriereHaut[modelhash].xpos, Config.Trucktrailer.VoitureArriereHaut[modelhash].ypos, Config.Trucktrailer.VoitureArriereHaut[modelhash].zpos, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
					else
						AttachEntityToEntity(clostestvehicle, oldtrailer, 1, -0.6, 2.5, 3.5, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
					end
					CurrentlyTowedVehicle6 = clostestvehicle
				else
					AttachEntityToEntity(CurrentlyTowedVehicle6, oldtrailer, 1, 0.0, -6.0, 0.3, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
					DetachEntity(CurrentlyTowedVehicle6, true, true)
					CurrentlyTowedVehicle6 = nil
				end
				----------- arriere en haut
			end
		end,
		function(data, menu)
			menu.close()
		end
	)
end
