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

ESX             				 = nil

local cardOpen 					= false
local playerData 				= {}
local windowavg					= false
local windowavd					= false
local windowarg					= false
local windoward					= false
local window 					= false



-- Servern callback
RegisterNetEvent('jsfour-idcard:open')
AddEventHandler('jsfour-idcard:open', function(playerData)
	cardOpen = true
	SendNUIMessage({
		action = "open",
		array = playerData
	})
end)

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer   
end)

-- Giving ID Animation
function OpenGivingID()
  local pP = GetPlayerPed(-1)

  Citizen.CreateThread(function()

    local pP = GetPlayerPed(-1)
    TaskPlayAnim(pP, "mp_common", "givetake1_a", 3.5, -8, -1, 2, 0, 0, 0, 0, 0)
    Citizen.CreateThread(function()
      Citizen.Wait(10000)
      TriggerServerEvent('esx_personmeny:give_id')
      ClearPedTasksImmediately(pP)
      end)
    end)
end

-- No one Near Animation
function OpenNoOneNear()
  local pP = GetPlayerPed(-1)

  Citizen.CreateThread(function()

    local pP = GetPlayerPed(-1)
    TaskPlayAnim(pP, "anim@mp_player_intcelebrationmale@face_palm", "face_palm", 3.5, -8, -1, 2, 0, 0, 0, 0, 0)
    Citizen.CreateThread(function()
      Citizen.Wait(10000)
      TriggerServerEvent('esx_personmeny:idnoonenear')
      ClearPedTasksImmediately(pP)
      end)
    end)
end

function OpenTrashCan()
  local pP = GetPlayerPed(-1)

  Citizen.CreateThread(function()

    local pP = GetPlayerPed(-1)
    TaskPlayAnim(pP, "mp_common", "givetake2_a", 3.5, -8, -1, 2, 0, 0, 0, 0, 0)
    TaskStartScenarioInPlace(pP, "mp_common", 0, true)
    Citizen.CreateThread(function()
      Citizen.Wait(2000)
      ClearPedTasksImmediately(pP)
      end)
    end)
end

function OpenAttansCan()
  local pP = GetPlayerPed(-1)

  Citizen.CreateThread(function()

    local pP = GetPlayerPed(-1)
    TaskPlayAnim(pP, "gestures@m@standing@casual", "gesture_damn", 3.5, -8, -1, 2, 0, 0, 0, 0, 0)
    TaskStartScenarioInPlace(pP, "gestures@m@standing@casual", 0, true)
    FreezeEntityPosition(playerPed, true)
    Citizen.CreateThread(function()
      Citizen.Wait(2000)
      FreezeEntityPosition(playerPed, false)
      ClearPedTasksImmediately(pP)
      end)
    end)
end

function OpenShowGiveID()

ESX.UI.Menu.Open(
	'default', GetCurrentResourceName(), 'id_card_menu',
	{
		title    = _U('id_menu'),
		elements = {
			{label = _U('check_id'), value = 'checkID'},
			{label = _U('show_id'), value = 'showID'},
			{label = _U('check_driver'), value = 'checkDriver'},
			{label = _U('show_driver'), value = 'showDriver'},
			{label = _U('checkFirearms'), value = 'checkFirearms'},
			{label = _U('showFirearms'), value = 'showFirearms'}			
		}
	},
	function(data2, menu2)
		if data2.current.value == 'checkID' then
			TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(PlayerId()))
		elseif data2.current.value == 'showID' then
			local player, distance = ESX.Game.GetClosestPlayer()
			if distance ~= -1 and distance <= 3.0 then
				TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(player))
			else
				ESX.ShowNotification('Keiner in der Nähe')
			end
		end
		if data2.current.value == 'checkDriver' then
			TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(PlayerId()), 'driver')
		elseif data2.current.value == 'showDriver' then
			local player, distance = ESX.Game.GetClosestPlayer()
			if distance ~= -1 and distance <= 3.0 then
				TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(player), 'driver')
			else
				ESX.ShowNotification('Keiner in der Nähe')
			end
		end
		if data2.current.value == 'checkFirearms' then
			TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(PlayerId()), 'weapon')
		elseif data2.current.value == 'showFirearms' then
			local player, distance = ESX.Game.GetClosestPlayer()
			if distance ~= -1 and distance <= 3.0 then
				TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(player), 'weapon')
			else
				ESX.ShowNotification('Keiner in der Nähe')
			end
		end				
	end,
	function(data2, menu2)
		menu2.close()
		OpenCivilianActionsMenu()
	end
)

end

function OpenCivilianActionsMenu()

  ESX.UI.Menu.CloseAll()

  ESX.UI.Menu.Open(
  'default', GetCurrentResourceName(), 'civilian_actions',
  {
    title    = _U('citizen_interactions'),
    align    = 'top-left',
    elements = {
      {label = _U('vehicle_menu'), value = 'vehiclemenu'},
      {label = _U('id_card'), value = 'id_kort'},
    }
  },
    
    function(data, menu)

      if data.current.value == 'id_kort' then
      	OpenShowGiveID()
      end

      if data.current.value == 'blindfold' then
        local player, distance = ESX.Game.GetClosestPlayer()

      if distance ~= -1 and distance <= 3.0 then
           ESX.TriggerServerCallback('jsfour-idcard:itemCheck', function( hasItem )
              TriggerServerEvent('jsfour-idcard', GetPlayerServerId(player), hasItem)
           end)
      else
           ESX.ShowAdvancedNotification('Individåtgärder', '~b~Ögonbindel', _U('nobody_near'), 'CHAR_DEFAULT', 8)
          end
      end

      if data.current.value == 'vehiclemenu' then
        local playerPed = GetPlayerPed(-1)
        if IsPedSittingInAnyVehicle(playerPed) then
            local playerVeh = GetVehiclePedIsIn(playerPed, false)
            local drivingPed = GetPedInVehicleSeat(playerVeh, -1)
            if drivingPed == playerPed then
                OpenVehicleMenu()
            end
        end
      end

      if data.current.value == 'pee' then
          TriggerEvent('pee')
      elseif data.current.value == 'poop' then
          TriggerEvent('poop')
       end

      if data.current.value == 'check' then
            TriggerServerEvent('jsfour-legitimation:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(PlayerId()))
      elseif data.current.value == 'show' then
           local player, distance = ESX.Game.GetClosestPlayer()

      if distance ~= -1 and distance <= 3.0 then
        TriggerServerEvent('jsfour-legitimation:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(player))
      else
        ESX.ShowAdvancedNotification('Individåtgärder', '', _U('nobody_near'), 'CHAR_DEFAULT', 8)
      end
    end
    end,
    function(data, menu)
      menu.close()
    end
  )
end

function OpenVehicleMenu()

  ESX.UI.Menu.CloseAll()

  ESX.UI.Menu.Open(
    'default', GetCurrentResourceName(), 'vehicle_actions',
    {
      title    = _U('vehicle_menu'),
      align    = 'top-left',
      elements = {
        {label = _U('doors'),        value = 'door'},
        {label = _U('window'),         value = 'window'},
      }
    },
    function(data, menu)
      if data.current.value == 'engine' then
        local playerPed = GetPlayerPed(-1)
          local playerVeh = GetVehiclePedIsIn(playerPed, false)
        if engineOn == true then
                SetVehicleUndriveable(playerVeh, true)
            SetVehicleEngineOn(playerVeh, false, false, false)
            engineOn = false
            TriggerEvent("pNotify:SendNotification", {text = _U('turned_off_engine'), type = "error", queue = "vehiclemenu", timeout = 1000, layout = "bottomLeft"})
        else
          SetVehicleUndriveable(playerVeh, false)
            SetVehicleEngineOn(playerVeh, true, false, false)       
                engineOn = true
            TriggerEvent("pNotify:SendNotification", {text = _U('turned_on_engine'), type = "success", queue = "vehiclemenu", timeout = 1000, layout = "bottomLeft"})
        end
      end

      if data.current.value == 'changeseat' then
        TriggerEvent("SeatShuffle")
      end

      if data.current.value == 'door' then
        ESX.UI.Menu.CloseAll()

        ESX.UI.Menu.Open(
          'default', GetCurrentResourceName(), 'door_actions',
          {
            title    = _U('doors'),
            align    = 'top-left',
            elements = {
              {label = _U('hood'),        value = 'hood'},
              {label = _U('trunk'),           value = 'trunk'},
              {label = _U('front_left_door'),   value = 'dooravg'},
              {label = _U('front_right_door'),     value = 'dooravd'},
              {label = _U('back_left_door'),      value = 'doorarg'},
              {label = _U('back_right_door'),      value = 'doorard'}
            }
          },
          function(data, menu)
            if data.current.value == 'hood' then
              local playerPed = GetPlayerPed(-1)
                local playerVeh = GetVehiclePedIsIn(playerPed, false)
                if (IsPedSittingInAnyVehicle(playerPed)) then
                  if GetVehicleDoorAngleRatio(playerVeh, 4) > 0.0 then 
                      SetVehicleDoorShut(playerVeh, 4, false)
                      TriggerEvent("pNotify:SendNotification", {text = "Du hast die Motorhaube geschlossen!", type = "error", queue = "vehiclemenu", timeout = 1000, layout = "bottomLeft"})
                   else
                      SetVehicleDoorOpen(playerVeh, 4, false)
                      frontleft = true
                      TriggerEvent("pNotify:SendNotification", {text = "Du hast die Motorhaube geöffnet!", type = "success", queue = "vehiclemenu", timeout = 1000, layout = "bottomLeft"})
                    end
                end
            end
            if data.current.value == 'trunk' then
              local playerPed = GetPlayerPed(-1)
                local playerVeh = GetVehiclePedIsIn(playerPed, false)
                if ( IsPedSittingInAnyVehicle( playerPed ) ) then
                   if GetVehicleDoorAngleRatio(playerVeh, 5) > 0.0 then 
                      SetVehicleDoorShut(playerVeh, 5, false)
                      TriggerEvent("pNotify:SendNotification", {text = _U('closed_hood'), type = "error", queue = "vehiclemenu", timeout = 1000, layout = "bottomLeft"})
                    else
                      SetVehicleDoorOpen(playerVeh, 5, false)
                      frontleft = true
                      TriggerEvent("pNotify:SendNotification", {text = _U('opened_hood'), type = "success", queue = "vehiclemenu", timeout = 1000, layout = "bottomLeft"})    
                   end
                end
            end
            if data.current.value == 'dooravg' then
              local playerPed = GetPlayerPed(-1)
                local playerVeh = GetVehiclePedIsIn(playerPed, false)
                if ( IsPedSittingInAnyVehicle( playerPed ) ) then
                   if GetVehicleDoorAngleRatio(playerVeh, 0) > 0.0 then 
                      SetVehicleDoorShut(playerVeh, 0, false)
                      TriggerEvent("pNotify:SendNotification", {text = _U('closed_door'), type = "error", queue = "vehiclemenu", timeout = 1000, layout = "bottomLeft"})
                    else
                      SetVehicleDoorOpen(playerVeh, 0, false)
                      frontleft = true
                      TriggerEvent("pNotify:SendNotification", {text = _U('opened_door'), type = "success", queue = "vehiclemenu", timeout = 1000, layout = "bottomLeft"})
                   end
                end
            end
            if data.current.value == 'dooravd' then
              local playerPed = GetPlayerPed(-1)
                local playerVeh = GetVehiclePedIsIn(playerPed, false)
                if ( IsPedSittingInAnyVehicle( playerPed ) ) then
                   if GetVehicleDoorAngleRatio(playerVeh, 1) > 0.0 then 
                      SetVehicleDoorShut(playerVeh, 1, false)
                      TriggerEvent("pNotify:SendNotification", {text = _U('closed_door'), type = "error", queue = "vehiclemenu", timeout = 1000, layout = "bottomLeft"})
                    else
                      SetVehicleDoorOpen(playerVeh, 1, false)
                      frontleft = true
                      TriggerEvent("pNotify:SendNotification", {text = _U('opened_door'), type = "success", queue = "vehiclemenu", timeout = 1000, layout = "bottomLeft"})  
                   end
                end
            end
            if data.current.value == 'doorarg' then
              local playerPed = GetPlayerPed(-1)
                local playerVeh = GetVehiclePedIsIn(playerPed, false)
                if ( IsPedSittingInAnyVehicle( playerPed ) ) then
                   if GetVehicleDoorAngleRatio(playerVeh, 2) > 0.0 then 
                      SetVehicleDoorShut(playerVeh, 2, false)
                      TriggerEvent("pNotify:SendNotification", {text = _U('closed_door'), type = "error", queue = "vehiclemenu", timeout = 1000, layout = "bottomLeft"})
                    else
                      SetVehicleDoorOpen(playerVeh, 2, false)
                      frontleft = true
                      TriggerEvent("pNotify:SendNotification", {text = _U('opened_door'), type = "success", queue = "vehiclemenu", timeout = 1000, layout = "bottomLeft"})     
                   end
                end
            end
            if data.current.value == 'doorard' then
              local playerPed = GetPlayerPed(-1)
                local playerVeh = GetVehiclePedIsIn(playerPed, false)
                if ( IsPedSittingInAnyVehicle( playerPed ) ) then
                   if GetVehicleDoorAngleRatio(playerVeh, 3) > 0.0 then 
                      SetVehicleDoorShut(playerVeh, 3, false)
                      TriggerEvent("pNotify:SendNotification", {text = _U('closed_door'), type = "error", queue = "vehiclemenu", timeout = 1000, layout = "bottomLeft"})
                    else
                      SetVehicleDoorOpen(playerVeh, 3, false)
                      frontleft = true
                      TriggerEvent("pNotify:SendNotification", {text = _U('opened_door'), type = "success", queue = "vehiclemenu", timeout = 1000, layout = "bottomLeft"})
                   end
                end
            end
          end,
        function(data, menu)
          menu.close()
          OpenVehicleMenu()
        end
        )
      end
      if data.current.value == 'window' then
        ESX.UI.Menu.CloseAll()

        ESX.UI.Menu.Open(
          'default', GetCurrentResourceName(), 'window_actions',
          {
            title    = _U('window_menu'),
            align    = 'top-left',
            elements = {
              {label = _U('front_left_window'),   value = 'windowavga'},
              {label = _U('front_right_window'),   value = 'windowavdr'},
              {label = _U('back_left_window'),   value = 'windowarga'},
              {label = _U('back_right_window'),   value = 'windowardr'}
            }
          },
          function(data, menu)
            if data.current.value == 'windowavga' then
              local playerPed = GetPlayerPed(-1)
                local playerVeh = GetVehiclePedIsIn(playerPed, false)
                if windowavg == false then
                      RollDownWindow(playerVeh, 0)
                      windowavg = true
                      TriggerEvent("pNotify:SendNotification", {text = _U('opened_window'), type = "error", queue = "vehiclemenu", timeout = 1000, layout = "bottomLeft"})
                else
                  RollUpWindow(playerVeh, 0)
                      windowavg = false
                  TriggerEvent("pNotify:SendNotification", {text = _U('closed_wondow'), type = "success", queue = "vehiclemenu", timeout = 1000, layout = "bottomLeft"})
                end
            end
            if data.current.value == 'windowavdr' then
              local playerPed = GetPlayerPed(-1)
                local playerVeh = GetVehiclePedIsIn(playerPed, false)
                if windowavd == false then
                      RollDownWindow(playerVeh, 1)
                      windowavd = true
                  TriggerEvent("pNotify:SendNotification", {text = _U('opened_window'), type = "error", queue = "vehiclemenu", timeout = 1000, layout = "bottomLeft"})
                else
                  RollUpWindow(playerVeh, 1)
                      windowavd = false
                  TriggerEvent("pNotify:SendNotification", {text = _U('closed_wondow'), type = "success", queue = "vehiclemenu", timeout = 1000, layout = "bottomLeft"})
                end
            end
            if data.current.value == 'windowarga' then
              local playerPed = GetPlayerPed(-1)
                local playerVeh = GetVehiclePedIsIn(playerPed, false)
                if windowarg == false then
                      RollDownWindow(playerVeh, 2)
                      windowarg = true
                  TriggerEvent("pNotify:SendNotification", {text = _U('opened_window'), type = "error", queue = "vehiclemenu", timeout = 1000, layout = "bottomLeft"})
                else
                  RollUpWindow(playerVeh, 2)
                      windowarg = false
                  TriggerEvent("pNotify:SendNotification", {text = _U('closed_wondow'), type = "success", queue = "vehiclemenu", timeout = 1000, layout = "bottomLeft"})
                end
            end
            if data.current.value == 'windowardr' then
              local playerPed = GetPlayerPed(-1)
                local playerVeh = GetVehiclePedIsIn(playerPed, false)
                if windoward == false then
                      RollDownWindow(playerVeh, 3)
                      windoward = true
                  TriggerEvent("pNotify:SendNotification", {text = _U('opened_window'), type = "error", queue = "vehiclemenu", timeout = 1000, layout = "bottomLeft"})
                else
                  RollUpWindow(playerVeh, 3)
                      windoward = false
                  TriggerEvent("pNotify:SendNotification", {text = _U('closed_wondow'), type = "success", queue = "vehiclemenu", timeout = 1000, layout = "bottomLeft"})
                end
            end
          end,
        function(data, menu)
          menu.close()
          OpenVehicleMenu()
        end
        )
      end
      if data.current.value == 'cruise_control' then
        ESX.UI.Menu.CloseAll()


      end
    end,
  function(data, menu)
    menu.close()
    OpenCivilianActionsMenu()
  end
  )
end

-- Close the ID card
-- Key events
Citizen.CreateThread(function()
	while true do
		Wait(0)
		if IsControlPressed(0, 322) or IsControlPressed(0, 177) and cardOpen then
			SendNUIMessage({
				action = "close"
			})
			cardOpen = false
		end
	end
end)

Citizen.CreateThread(function()
  while true do
    Wait(0)
    if IsControlPressed(0, Keys["M"]) then
      OpenCivilianActionsMenu()
    end
  end
end)

