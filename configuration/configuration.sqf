/************************ Setup Player ************************/

player enableSimulation false;
enableSaving [false, false];

/************************ Check Addons ************************/

[] spawn {
  waitUntil {!isNil "OL_Version"};
  if (OL_Version != 20171210) exitWith {
    titleText ["Addons out of date, you will be kicked in 10 seconds!", "BLACK"];
    uiSleep 10;
    player setVariable ["AddonsOutOfDate", true, true];
  };
};

/************************ Init Mission Addons ************************/

[] execVM "addons\proving_Ground\init.sqf";
[] execVM "addons\btk\Cargo Drop\init.sqf";

/************************ Graphical Settings *************************/

GFX_ArmaViewDistance    = 800;
GFX_ArmaTerrainGrids    = [50, 25, 12.5, 6.25];
GFX_ArmaTerrainGridsSel = 0;
setViewDistance GFX_ArmaViewDistance;
setTerrainGrid (GFX_ArmaTerrainGrids select GFX_ArmaTerrainGridsSel);
