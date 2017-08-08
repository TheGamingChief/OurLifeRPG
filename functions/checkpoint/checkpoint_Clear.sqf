_uid = getplayeruid player;
_gridPos = mapGridPosition getPos player;

switch (true) do {
  case ((getPlayerUID player in OL_SwagDevs) || (getPlayerUID player in adminlevel4) || (getPlayerUID player in OL_CheckpointWL)) : {
    format['if((getPlayerUID player in adminlevel4) || (getPlayerUID player in OL_SwagDevs)) then {player groupChat "%1 has cleared a checkpoint (200m)."}', player getVariable "RealName"] call OL_network_Swag;
    {
      if ((_x getVariable "AM_CP") == 1) then {
        deleteVehicle _x;
      };
    } foreach nearestObjects[vehicle player,["All"],200];

      ["CheckPointClear_Log", format ["Admin %1 (%2) has Cleared a Checkpoint at %3", player getVariable "RealName", getPlayerUID player, _gridPos]] call RM_fnc_LogToServer;
  };
  case (isCop) : {
    if ((_uid in cpl_id) or (_uid in Deputy_id)) then {

        format['if(isCop) then{player sideChat "%1 has cleared a checkpoint (200m)."}', player getVariable "RealName"] call OL_network_Swag;
      {
            if((_x getVariable "AM_CP") == 1) then {
                deleteVehicle _x;
            };
        } foreach nearestObjects[player,["All"],200];

        ["CheckPointClear_Log", format ["Officer %1 (%2) has Cleared a Checkpoint at %3", player getVariable "RealName", getPlayerUID player, _gridPos]] call RM_fnc_LogToServer;

      } else {
        format['if(isCop) then{player sideChat "%1 has attempted to clear a checkpoint (200m). This can only be done by a Corporal or higher."}', player getVariable "RealName"] call OL_network_Swag;
      };
  };
  case (ismedic) : {
    format['if(ismedic) then{player sideChat "%1 has cleared a checkpoint (200m)."}', player getVariable "RealName"] call OL_network_Swag;
    {
          if((_x getVariable "AM_CP") == 1) then
          {
              deleteVehicle _x;
          };
      }foreach nearestObjects[player,["All"],200];

      ["CheckPointClear_Log", format ["Medic %1 (%2) has Cleared a Checkpoint at %3", player getVariable "RealName", getPlayerUID player, _gridPos]] call RM_fnc_LogToServer;
  };
  case (_uid in Tow_ID) : {
    {
          if((_x getVariable "AM_CP") == 1) then
          {
              deleteVehicle _x;
          };
      }foreach nearestObjects[player,["All"],200];

      ["CheckPointClear_Log", format ["Mechanic %1 (%2) has Cleared a Checkpoint at %3", player getVariable "RealName", getPlayerUID player, _gridPos]] call RM_fnc_LogToServer;
  };
};