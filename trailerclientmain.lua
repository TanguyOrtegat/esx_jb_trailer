ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

local CurrentlyTowedVehicle    = nil
local CurrentlyTowedVehicle2   = nil
local CurrentlyTowedVehicle3   = nil
local CurrentlyTowedVehicle4   = nil
local CurrentlyTowedVehicle5   = nil
local CurrentlyTowedVehicle6   = nil
local CurrentlyTowedVehicle7   = nil
local CurrentlyTowedVehicle8   = nil
local CurrentlyTowedVehicle9   = nil
local CurrentlyTowedVehicle10  = nil
local CurrentlyTowedVehicle11  = nil
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
					local coords = GetOffsetFromEntityInWorldCoords(oldtrailer, -2.0, -6.0, -1.1)
					local coords2 = GetOffsetFromEntityInWorldCoords(oldtrailer, 0.0, -12.0, -1.0)
					local dist = GetDistanceBetweenCoords(myCoord.x, myCoord.y, myCoord.z, coords.x, coords.y, coords.z, true)
					if dist < 5 then
						DrawMarker(27, coords.x, coords.y, coords.z, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 255, 0, 0, 200, 0, 0, 0, 0)
						DrawMarker(1, coords2.x, coords2.y, coords2.z, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 255, 0, 0, 200, 0, 0, 0, 0)
						-- FreezeEntityPosition
						if dist < 2 then
							SetTextComponentFormat("STRING")
							AddTextComponentString(_U("open_tow_menu"))
							DisplayHelpTextFromStringLabel(0, 0, 1, -1)
							if IsControlJustPressed(0, Config.Key) then
								OpenVehiculeMenu(oldtrailer, coords2)
							end
						else
							ESX.UI.Menu.CloseAll()
						end
					end
				end
			end
		elseif oldtrailermodel == 1029869057 then -- pjtrailer
			if currentVehicle == 0 then -- a pied
				if oldtrailer ~= 0 then
					local coords = GetOffsetFromEntityInWorldCoords(oldtrailer, -2.0, -6.0, -1.1)
					local coords2 = GetOffsetFromEntityInWorldCoords(oldtrailer, 0.0, -11.0, -1.0)
					local dist = GetDistanceBetweenCoords(myCoord.x, myCoord.y, myCoord.z, coords.x, coords.y, coords.z, true)
					if dist < 5 then
						DrawMarker(27, coords.x, coords.y, coords.z, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 255, 0, 0, 200, 0, 0, 0, 0)
						DrawMarker(1, coords2.x, coords2.y, coords2.z, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 255, 0, 0, 200, 0, 0, 0, 0)
						-- FreezeEntityPosition
						if dist < 2 then
							SetTextComponentFormat("STRING")
							AddTextComponentString(_U("open_tow_menu"))
							DisplayHelpTextFromStringLabel(0, 0, 1, -1)
							if IsControlJustPressed(0, Config.Key) then
								OpenVehiculeMenu2(oldtrailer, coords2)
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
						DrawMarker(27, coords.x, coords.y, coords.z, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 255, 0, 0, 200, 0, 0, 0, 0)
						DrawMarker(1, coords2.x, coords2.y, coords2.z, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 255, 0, 0, 200, 0, 0, 0, 0)
						if dist < 1 then
							SetTextComponentFormat("STRING")
							if CurrentlyTowedVehicle7 == nil then								
								AddTextComponentString(_U("attach_vehicle"))
							else
								AddTextComponentString(_U("detach_vehicle"))
							end
							DisplayHelpTextFromStringLabel(0, 0, 1, -1)
							if IsControlJustPressed(0, Config.Key) then
								local clostestvehicle = GetClosestVehicle(coords2.x, coords2.y, coords2.z, 2.0, 0, 127)
								local modelhash = GetEntityModel(clostestvehicle)
								if CurrentlyTowedVehicle7 == nil then
									if Config.Cartrailer[modelhash] ~= nil then
									    if (Config.SmallTrailerTowListOnly == true) then
										AttachEntityToEntity(clostestvehicle, oldtrailer, 20, 0.0, Config.Cartrailer[modelhash].ypos, Config.Cartrailer[modelhash].zpos, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
									    CurrentlyTowedVehicle7 = clostestvehicle
										elseif (Config.SmallTrailerTowListOnly == false) then
										AttachEntityToEntity(clostestvehicle, oldtrailer, 20, 0.0, Config.Cartrailer[modelhash].ypos, Config.Cartrailer[modelhash].zpos, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
									    end
									else
									    if (Config.SmallTrailerTowListOnly == false) then
										AttachEntityToEntity(clostestvehicle, oldtrailer, 20, 0.0, -1.1, 0.6, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
										elseif (Config.SmallTrailerTowListOnly == true) then 
						                ESX.ShowNotification('Sorry you cannot tow this vehicle.')
									end
								end	
									if (Config.SmallTrailerTowListOnly == false) then 
									CurrentlyTowedVehicle7 = clostestvehicle
									end
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
						DrawMarker(27, coords.x, coords.y, coords.z, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 255, 0, 0, 200, 0, 0, 0, 0)
						DrawMarker(1, coords2.x, coords2.y, coords2.z, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 255, 0, 0, 200, 0, 0, 0, 0)
						if dist < 1 then
							SetTextComponentFormat("STRING")
							if CurrentlyTowedVehicle8 == nil then
								AddTextComponentString(_U("attach_vehicle"))
							else
								AddTextComponentString(_U("detach_vehicle"))
							end
							DisplayHelpTextFromStringLabel(0, 0, 1, -1)
							if IsControlJustPressed(0, Config.Key) then
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
									    if (Config.BoatTrailerTowListOnly == true) then
										AttachEntityToEntity(clostestvehicle, oldtrailer, 20, 0.0, Config.Boattrailer[modelhash].ypos, Config.Boattrailer[modelhash].zpos, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
									    CurrentlyTowedVehicle8 = clostestvehicle
										elseif (Config.BoatTrailerTowListOnly == false) then
										AttachEntityToEntity(clostestvehicle, oldtrailer, 20, 0.0, Config.Boattrailer[modelhash].ypos, Config.Boattrailer[modelhash].zpos, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
										end
									else
									    if (Config.BoatTrailerTowListOnly == false) then
										AttachEntityToEntity(clostestvehicle, oldtrailer, 20, 0.0, -0.6, 0.3, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
										elseif (Config.BoatTrailerTowListOnly == true) then 
						                ESX.ShowNotification('Sorry you cannot tow this vehicle.')
									end
								end	
									if (Config.BoatTrailerTowListOnly == false) then 
									CurrentlyTowedVehicle8 = clostestvehicle
									end
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
		if (Config.Controller == false) then 
		if IsControlJustPressed(1, Config.DetachTrailerKey) then
			local playerVeh = GetVehiclePedIsIn(myPed, true)
			GotTrailer, TrailerHandle = GetVehicleTrailerVehicle(playerVeh)
			DetachVehicleFromTrailer(playerVeh)
			end
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
			-- title    = 'VĂ©hicule',
			align    = 'bottom-right',
			elements = elements
		},
		function(data, menu)


-------------------------------------------------------------
--------------------- OUVRIR LES PORTES ---------------------
-------------------------------------------------------------
			if data.current.value == 'OuverturePlateau' then
				porteCapotOuvert = true
				SetVehicleDoorOpen(oldtrailer, 4, false, false)
				OpenVehiculeMenu(oldtrailer, coords2)
			elseif data.current.value == 'OuvertureRampe' then
				porteCoffreOuvert = true
				SetVehicleDoorOpen(oldtrailer, 5, false, false)
				OpenVehiculeMenu(oldtrailer, coords2)

-------------------------------------------------------------
--------------------- FERMER LES PORTES ---------------------
-------------------------------------------------------------
			elseif data.current.value == 'FermeturePlateau' then
				porteCapotOuvert = false
				SetVehicleDoorShut(oldtrailer, 4, false, false)
				OpenVehiculeMenu(oldtrailer, coords2)
			elseif data.current.value == 'FermetureRampe' then
				porteCoffreOuvert = false
				SetVehicleDoorShut(oldtrailer, 5, false, false)
				OpenVehiculeMenu(oldtrailer, coords2)


			elseif data.current.value == 'VoitureAvantBas' then
				local clostestvehicle = GetClosestVehicle(coords2.x, coords2.y, coords2.z, 2.0, 0, 127)
				local modelhash = GetEntityModel(clostestvehicle)
				if CurrentlyTowedVehicle == nil then
					if Config.Trucktrailer.VoitureAvantBas[modelhash] ~= nil then
					if (Config.BigTrailerTowListOnly == true) then
						AttachEntityToEntity(clostestvehicle, oldtrailer, 1, Config.Trucktrailer.VoitureAvantBas[modelhash].xpos, Config.Trucktrailer.VoitureAvantBas[modelhash].ypos, Config.Trucktrailer.VoitureAvantBas[modelhash].zpos, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
					    CurrentlyTowedVehicle = clostestvehicle
						elseif (Config.BigTrailerTowListOnly == false) then
						AttachEntityToEntity(clostestvehicle, oldtrailer, 1, Config.Trucktrailer.VoitureAvantBas[modelhash].xpos, Config.Trucktrailer.VoitureAvantBas[modelhash].ypos, Config.Trucktrailer.VoitureAvantBas[modelhash].zpos, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
						end
					else
					    if (Config.BigTrailerTowListOnly == false) then 
						AttachEntityToEntity(clostestvehicle, oldtrailer, 1, -0.6, 13.0, 1.5, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
						elseif (Config.BigTrailerTowListOnly == true) then 
						ESX.ShowNotification('Sorry you cannot tow this vehicle.')
					end
				end	
					if (Config.BigTrailerTowListOnly == false) then 
					CurrentlyTowedVehicle = clostestvehicle
					end
				else
					AttachEntityToEntity(CurrentlyTowedVehicle, oldtrailer, 1, -0.5, -6.0, 0.3, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
					DetachEntity(CurrentlyTowedVehicle, true, true)
					CurrentlyTowedVehicle = nil
				end
				
			elseif data.current.value == 'VoitureMilieuBas' then
				local clostestvehicle = GetClosestVehicle(coords2.x, coords2.y, coords2.z, 2.0, 0, 127)
				local modelhash = GetEntityModel(clostestvehicle)
				if CurrentlyTowedVehicle2 == nil then
					if Config.Trucktrailer.VoitureMilieuBas[modelhash] ~= nil then
					    if (Config.BigTrailerTowListOnly == true) then
						AttachEntityToEntity(clostestvehicle, oldtrailer, 1, Config.Trucktrailer.VoitureMilieuBas[modelhash].xpos, Config.Trucktrailer.VoitureMilieuBas[modelhash].ypos, Config.Trucktrailer.VoitureMilieuBas[modelhash].zpos, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
					    CurrentlyTowedVehicle2 = clostestvehicle
						elseif (Config.BigTrailerTowListOnly == false) then
						AttachEntityToEntity(clostestvehicle, oldtrailer, 1, Config.Trucktrailer.VoitureMilieuBas[modelhash].xpos, Config.Trucktrailer.VoitureMilieuBas[modelhash].ypos, Config.Trucktrailer.VoitureMilieuBas[modelhash].zpos, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
						end
					else
					    if (Config.BigTrailerTowListOnly == false) then 
						AttachEntityToEntity(clostestvehicle, oldtrailer, 1, -0.6, 7.5, 1.5, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
						elseif (Config.BigTrailerTowListOnly == true) then 
						ESX.ShowNotification('Sorry you cannot tow this vehicle.')
					end
				end	
				    if (Config.BigTrailerTowListOnly == false) then 
					CurrentlyTowedVehicle2 = clostestvehicle
					end
				else
					AttachEntityToEntity(CurrentlyTowedVehicle2, oldtrailer, 1, -0.5, -6.0, 0.3, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
					DetachEntity(CurrentlyTowedVehicle2, true, true)
					CurrentlyTowedVehicle2 = nil
				end

			elseif data.current.value == 'VoitureArriereBas' then
				local clostestvehicle = GetClosestVehicle(coords2.x, coords2.y, coords2.z, 2.0, 0, 127)
				local modelhash = GetEntityModel(clostestvehicle)
				if CurrentlyTowedVehicle3 == nil then
					if Config.Trucktrailer.VoitureArriereBas[modelhash] ~= nil then
					    if (Config.BigTrailerTowListOnly == true) then
						AttachEntityToEntity(clostestvehicle, oldtrailer, 1, Config.Trucktrailer.VoitureArriereBas[modelhash].xpos, Config.Trucktrailer.VoitureArriereBas[modelhash].ypos, Config.Trucktrailer.VoitureArriereBas[modelhash].zpos, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
					    CurrentlyTowedVehicle3 = clostestvehicle
						elseif (Config.BigTrailerTowListOnly == false) then
						AttachEntityToEntity(clostestvehicle, oldtrailer, 1, Config.Trucktrailer.VoitureArriereBas[modelhash].xpos, Config.Trucktrailer.VoitureArriereBas[modelhash].ypos, Config.Trucktrailer.VoitureArriereBas[modelhash].zpos, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
						end
					else
					    if (Config.BigTrailerTowListOnly == false) then 
						AttachEntityToEntity(clostestvehicle, oldtrailer, 1, -0.6, 2.5, 1.5, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
						elseif (Config.BigTrailerTowListOnly == true) then 
						ESX.ShowNotification('Sorry you cannot tow this vehicle.')
					end
				end	
				    if (Config.BigTrailerTowListOnly == false) then
					CurrentlyTowedVehicle3 = clostestvehicle
					end
				else
					AttachEntityToEntity(CurrentlyTowedVehicle2, oldtrailer, 1, -0.5, -6.0, 0.3, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
					DetachEntity(CurrentlyTowedVehicle3, true, true)
					CurrentlyTowedVehicle3 = nil
				end

			elseif data.current.value == 'VoitureAvantHaut' then
				local clostestvehicle = GetClosestVehicle(coords2.x, coords2.y, coords2.z, 2.0, 0, 127)
				local modelhash = GetEntityModel(clostestvehicle)
				if CurrentlyTowedVehicle4 == nil then
					if Config.Trucktrailer.VoitureAvantHaut[modelhash] ~= nil then
					if (Config.BigTrailerTowListOnly == true) then
						AttachEntityToEntity(clostestvehicle, oldtrailer, 1, Config.Trucktrailer.VoitureAvantHaut[modelhash].xpos, Config.Trucktrailer.VoitureAvantHaut[modelhash].ypos, Config.Trucktrailer.VoitureAvantHaut[modelhash].zpos, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
					    CurrentlyTowedVehicle4 = clostestvehicle
						elseif (Config.BigTrailerTowListOnly == false) then
						AttachEntityToEntity(clostestvehicle, oldtrailer, 1, Config.Trucktrailer.VoitureAvantHaut[modelhash].xpos, Config.Trucktrailer.VoitureAvantHaut[modelhash].ypos, Config.Trucktrailer.VoitureAvantHaut[modelhash].zpos, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
						end
					else
					    if (Config.BigTrailerTowListOnly == false) then 
						AttachEntityToEntity(clostestvehicle, oldtrailer, 1, -0.6, 13.0, 3.5, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
						elseif (Config.BigTrailerTowListOnly == true) then 
						ESX.ShowNotification('Sorry you cannot tow this vehicle.')
					end
				end	
					if (Config.BigTrailerTowListOnly == false) then
					CurrentlyTowedVehicle4 = clostestvehicle
					end
				else
					AttachEntityToEntity(CurrentlyTowedVehicle4, oldtrailer, 1, -0.5, -6.0, 0.3, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
					DetachEntity(CurrentlyTowedVehicle4, true, true)
					CurrentlyTowedVehicle4 = nil
				end

			elseif data.current.value == 'VoitureMilieuHaut' then
				local clostestvehicle = GetClosestVehicle(coords2.x, coords2.y, coords2.z, 2.0, 0, 127)
				local modelhash = GetEntityModel(clostestvehicle)
				if CurrentlyTowedVehicle5 == nil then
					if Config.Trucktrailer.VoitureMilieuHaut[modelhash] ~= nil then
					if (Config.BigTrailerTowListOnly == true) then
						AttachEntityToEntity(clostestvehicle, oldtrailer, 1, Config.Trucktrailer.VoitureMilieuHaut[modelhash].xpos, Config.Trucktrailer.VoitureMilieuHaut[modelhash].ypos, Config.Trucktrailer.VoitureMilieuHaut[modelhash].zpos, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
					    CurrentlyTowedVehicle5 = clostestvehicle
						elseif (Config.BigTrailerTowListOnly == false) then
						AttachEntityToEntity(clostestvehicle, oldtrailer, 1, Config.Trucktrailer.VoitureMilieuHaut[modelhash].xpos, Config.Trucktrailer.VoitureMilieuHaut[modelhash].ypos, Config.Trucktrailer.VoitureMilieuHaut[modelhash].zpos, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
						end
					else
					    if (Config.BigTrailerTowListOnly == false) then 
						AttachEntityToEntity(clostestvehicle, oldtrailer, 1, -0.6, 7.5, 3.5, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
						elseif (Config.BigTrailerTowListOnly == true) then 
						ESX.ShowNotification('Sorry you cannot tow this vehicle.')
					end
				end	
					if (Config.BigTrailerTowListOnly == false) then
					CurrentlyTowedVehicle5 = clostestvehicle
					end
				else
					AttachEntityToEntity(CurrentlyTowedVehicle5, oldtrailer, 1, -0.5, -6.0, 0.3, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
					DetachEntity(CurrentlyTowedVehicle5, true, true)
					CurrentlyTowedVehicle5 = nil
				end
				
			elseif data.current.value == 'VoitureArriereHaut' then
				local clostestvehicle = GetClosestVehicle(coords2.x, coords2.y, coords2.z, 2.0, 0, 127)
				local modelhash = GetEntityModel(clostestvehicle)
				if CurrentlyTowedVehicle6 == nil then
					if Config.Trucktrailer.VoitureArriereHaut[modelhash] ~= nil then
					    if (Config.BigTrailerTowListOnly == true) then
						AttachEntityToEntity(clostestvehicle, oldtrailer, 1, Config.Trucktrailer.VoitureArriereHaut[modelhash].xpos, Config.Trucktrailer.VoitureArriereHaut[modelhash].ypos, Config.Trucktrailer.VoitureArriereHaut[modelhash].zpos, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
					    CurrentlyTowedVehicle6 = clostestvehicle
						elseif (Config.BigTrailerTowListOnly == false) then
						AttachEntityToEntity(clostestvehicle, oldtrailer, 1, Config.Trucktrailer.VoitureArriereHaut[modelhash].xpos, Config.Trucktrailer.VoitureArriereHaut[modelhash].ypos, Config.Trucktrailer.VoitureArriereHaut[modelhash].zpos, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
						end
					else
					    if (Config.BigTrailerTowListOnly == false) then 
						AttachEntityToEntity(clostestvehicle, oldtrailer, 1, -0.6, 2.5, 3.5, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
						elseif (Config.BigTrailerTowListOnly == true) then 
						ESX.ShowNotification('Sorry you cannot tow this vehicle.')
					end
				end	
					if (Config.BigTrailerTowListOnly == false) then
					CurrentlyTowedVehicle6 = clostestvehicle
					end
				else
					AttachEntityToEntity(CurrentlyTowedVehicle6, oldtrailer, 1, -0.5, -6.0, 0.3, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
					DetachEntity(CurrentlyTowedVehicle6, true, true)
					CurrentlyTowedVehicle6 = nil
				end
			end
		end,
		function(data, menu)
			menu.close()
		end
	)
end



-- PjTrailer 
function OpenVehiculeMenu2(oldtrailer, coords2)

	ESX.UI.Menu.CloseAll()
	local elements = {}
	
	table.insert(elements, {label = _U("front_car_pjtrailer"),	value = 'VoitureAvant'})
	table.insert(elements, {label = _U("middle_car_pjtrailer"),	value = 'VoitureMilieu'})
	table.insert(elements, {label = _U("back_car_pjtrailer"),	value = 'VoitureArriere'})
	
	if porteCoffreOuvert then
		table.insert(elements, {label = _U("close_rampe_pjtrailer"),	value = 'FermetureRampePjTrailer'})
	else
		table.insert(elements, {label = _U("open_rampe_pjtrailer"),		value = 'OuvertureRampePjTrailer'})
	end
	
	
	

	ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'menuperso_vehicule',
		{
			img    = 'menu_vehicule',
			-- title    = 'VĂ©hicule',
			align    = 'bottom-right',
			elements = elements
		},
		function(data, menu)

-------------------------------------------------------------
--------------------- OUVRIR LES PORTES ---------------------
-------------------------------------------------------------

			if data.current.value == 'OuvertureRampePjTrailer' then
				porteCoffreOuvert = true
				SetVehicleDoorOpen(oldtrailer, 5, false, false)
				OpenVehiculeMenu2(oldtrailer, coords2)

-------------------------------------------------------------
--------------------- FERMER LES PORTES ---------------------
-------------------------------------------------------------
			elseif data.current.value == 'FermetureRampePjTrailer' then
				porteCoffreOuvert = false
				SetVehicleDoorShut(oldtrailer, 5, false, false)
				OpenVehiculeMenu2(oldtrailer, coords2)

			elseif data.current.value == 'VoitureAvant' then
				local clostestvehicle = GetClosestVehicle(coords2.x, coords2.y, coords2.z, 2.0, 0, 127)
				local modelhash = GetEntityModel(clostestvehicle)
				if CurrentlyTowedVehicle9 == nil then
					if Config.PjTrailer.VoitureAvant[modelhash] ~= nil then
					    if (Config.PjTrailerTowListOnly == true) then
						AttachEntityToEntity(clostestvehicle, oldtrailer, 1, Config.PjTrailer.VoitureAvant[modelhash].xpos, Config.PjTrailer.VoitureAvant[modelhash].ypos, Config.PjTrailer.VoitureAvant[modelhash].zpos, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
					    CurrentlyTowedVehicle9 = clostestvehicle
						elseif (Config.PjTrailerTowListOnly == false) then
						AttachEntityToEntity(clostestvehicle, oldtrailer, 1, Config.PjTrailer.VoitureAvant[modelhash].xpos, Config.PjTrailer.VoitureAvant[modelhash].ypos, Config.PjTrailer.VoitureAvant[modelhash].zpos, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
					    end
					else
					    if (Config.PjTrailerTowListOnly == false) then
						AttachEntityToEntity(clostestvehicle, oldtrailer, 1, -0.95, 10.55, 1.0, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
					    elseif (Config.PjTrailerTowListOnly == true) then 
						ESX.ShowNotification('Sorry you cannot tow this vehicle.')
					end
				end
					if (Config.PjTrailerTowListOnly == false) then
					CurrentlyTowedVehicle9 = clostestvehicle
					end
				else
					AttachEntityToEntity(CurrentlyTowedVehicle9, oldtrailer, 1, -1.0, -4.0, 0.3, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
					DetachEntity(CurrentlyTowedVehicle9, true, true)
					CurrentlyTowedVehicle9 = nil
				end

            
			elseif data.current.value == 'VoitureMilieu' then
				local clostestvehicle = GetClosestVehicle(coords2.x, coords2.y, coords2.z, 2.0, 0, 127)
				local modelhash = GetEntityModel(clostestvehicle)
				if CurrentlyTowedVehicle10 == nil then
					if Config.PjTrailer.VoitureMilieu[modelhash] ~= nil then
						if (Config.PjTrailerTowListOnly == true) then
						AttachEntityToEntity(clostestvehicle, oldtrailer, 1, Config.PjTrailer.VoitureMilieu[modelhash].xpos, Config.PjTrailer.VoitureMilieu[modelhash].ypos, Config.PjTrailer.VoitureMilieu[modelhash].zpos, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
					    CurrentlyTowedVehicle10 = clostestvehicle
						elseif (Config.PjTrailerTowListOnly == false) then
						AttachEntityToEntity(clostestvehicle, oldtrailer, 1, Config.PjTrailer.VoitureMilieu[modelhash].xpos, Config.PjTrailer.VoitureMilieu[modelhash].ypos, Config.PjTrailer.VoitureMilieu[modelhash].zpos, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
					    end
					else
					    if (Config.PjTrailerTowListOnly == false) then
						AttachEntityToEntity(clostestvehicle, oldtrailer, 1, -0.95, 6.95, 1.0, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
						elseif (Config.PjTrailerTowListOnly == true) then 
						ESX.ShowNotification('Sorry you cannot tow this vehicle.')
					end
				end	
				    if (Config.PjTrailerTowListOnly == false) then
					CurrentlyTowedVehicle10 = clostestvehicle
					end
				else
					AttachEntityToEntity(CurrentlyTowedVehicle10, oldtrailer, 1, -1.0, -4.0, 0.3, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
					DetachEntity(CurrentlyTowedVehicle10, true, true)
					CurrentlyTowedVehicle10 = nil
				end

				
			elseif data.current.value == 'VoitureArriere' then
				local clostestvehicle = GetClosestVehicle(coords2.x, coords2.y, coords2.z, 2.0, 0, 127)
				local modelhash = GetEntityModel(clostestvehicle)
				if CurrentlyTowedVehicle11 == nil then
					if Config.PjTrailer.VoitureArriere[modelhash] ~= nil then
					    if (Config.PjTrailerTowListOnly == true) then 
						AttachEntityToEntity(clostestvehicle, oldtrailer, 1, Config.PjTrailer.VoitureArriere[modelhash].xpos, Config.PjTrailer.VoitureArriere[modelhash].ypos, Config.PjTrailer.VoitureArriere[modelhash].zpos, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
						CurrentlyTowedVehicle11 = clostestvehicle
						elseif (Config.PjTrailerTowListOnly == false) then
						AttachEntityToEntity(clostestvehicle, oldtrailer, 1, Config.PjTrailer.VoitureArriere[modelhash].xpos, Config.PjTrailer.VoitureArriere[modelhash].ypos, Config.PjTrailer.VoitureArriere[modelhash].zpos, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
					end
					else
					    if (Config.PjTrailerTowListOnly == false) then 
						AttachEntityToEntity(clostestvehicle, oldtrailer, 1, -0.95, 3.95, 1.0, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
						elseif (Config.PjTrailerTowListOnly == true) then 
						ESX.ShowNotification('Sorry you cannot tow this vehicle.')
					end
				end
					if (Config.PjTrailerTowListOnly == false) then 
					CurrentlyTowedVehicle11 = clostestvehicle
					end
				else
					AttachEntityToEntity(CurrentlyTowedVehicle11, oldtrailer, 1, -1.0, -4.0, 0.3, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
					DetachEntity(CurrentlyTowedVehicle11, true, true)
					CurrentlyTowedVehicle11 = nil
				end
			end
		end,
		function(data, menu)
			menu.close()
		end
	)
end
