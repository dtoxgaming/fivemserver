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

local doors = {
  {"seat_dside_f", -1},
  {"seat_pside_f", 0},
  {"seat_dside_r", 1},
  {"seat_pside_r", 2}
}

function VehicleInFront()
    local pos = GetEntityCoords(GetPlayerPed(-1))
    local entityWorld = GetOffsetFromEntityInWorldCoords(GetPlayerPed(-1), 0.0, 5.0, 0.0)
    local rayHandle = CastRayPointToPoint(pos.x, pos.y, pos.z, entityWorld.x, entityWorld.y, entityWorld.z, 10, GetPlayerPed(-1), 0)
    local _, _, _, _, result = GetRaycastResult(rayHandle)
    return result
end

Citizen.CreateThread(function()
  while true do
    Citizen.Wait(0)
    DisablePlayerVehicleRewards(PlayerId())
    if IsControlJustReleased(0, 23) and running ~= true and GetVehiclePedIsIn(GetPlayerPed(-1), false) == 0 then
      local vehicle = VehicleInFront()
      running = true
      if vehicle ~= nil then
        local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
        local doorDistances = {}
        for k, door in pairs(doors) do
          local doorBone = GetEntityBoneIndexByName(vehicle, door[1])
          local doorPos = GetWorldPositionOfEntityBone(vehicle, doorBone)
          local distance = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, doorPos.x, doorPos.y, doorPos.z)
          table.insert(doorDistances, distance)
        end
        local key, min = 1, doorDistances[1]
        for k, v in ipairs(doorDistances) do
          if doorDistances[k] < min then
            key, min = k, v
          end
        end
        TaskEnterVehicle(GetPlayerPed(-1), vehicle, -1, doors[key][2], 1.0, 1, 0)
      end
      running = false
    end
  end
end)
