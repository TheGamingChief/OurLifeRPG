private ["_unit","_location","_timeout","_ReSpawnTime","_OL_TrackMarker"];
_unit = _this select 0;
_gridPos = mapGridPosition getpos _unit;

format['if(iscop) then {
    player sideChat format["(911)Police call for %2 he was just killed at: %3"];
    hint "Someone Has Died";
    _OL_TrackMarker = createMarkerLocal [("OL_DeadTracker_" + name %1), getPos %1];
    _OL_TrackMarker setMarkerShapeLocal "ICON";
    _OL_TrackMarker setMarkerColorLocal "ColorRed";
    _OL_TrackMarker setMarkerTypeLocal "Warning";
    _OL_TrackMarker setMarkerSizeLocal [0.6,0.6];
    _OL_TrackMarker setMarkerTextLocal format [STR_DEADGUY, name %1];
}',_unit, name _unit,_gridPos]call swag;
