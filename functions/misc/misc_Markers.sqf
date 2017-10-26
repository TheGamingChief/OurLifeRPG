if (iscop && !(isciv)) exitWith {
  if ((_this select 0) == "SETUP") exitWith {
    {
      _mrk = createMarkerLocal [format["OL_CopMrk_%1", _forEachIndex], [0,0,0]];
      _mrk setMarkerTextLocal format ["COP%1", (_forEachIndex + 1)];
      _mrk setMarkerAlphaLocal 0;
      _mrk setMarkerShapeLocal "ICON";
      _mrk setMarkerTypeLocal "Dot";
      _mrk setMarkerColorLocal "ColorBlue";
      _mrk setMarkerSizeLocal  [1.2, 1.2];
      OL_CopMarkerArray set [count OL_CopMarkerArray, _mrk];
    } forEach coparray;
  };

  {
    if (!(isNull _x)) then {
      _mrk = OL_CopMarkerArray select _forEachIndex;
      _mrk setMarkerAlphaLocal 1;
      _mrk setMarkerPosLocal (getPos _x);
    } else {
      _mrk = OL_CopMarkerArray select _forEachIndex;
      _mrk setMarkerAlphaLocal 0;
      _mrk setMarkerPosLocal [0, 0, 0];
    };
  } forEach coparray;
};

if (ismedic) exitWith {
  if ((_this select 0) == "SETUP") exitWith {
    {
      _mrk = createMarkerLocal [format["OL_EMSMrk_%1", _forEachIndex], [0,0,0]];
      _mrk setMarkerTextLocal format ["EMT%1", (_forEachIndex + 1)];
      _mrk setMarkerAlphaLocal 0;
      _mrk setMarkerShapeLocal "ICON";
      _mrk setMarkerTypeLocal "Dot";
      _mrk setMarkerColorLocal "ColorGreen";
      _mrk setMarkerSizeLocal  [1.2, 1.2];
      OL_EMSMarkerArray set [count OL_EMSMarkerArray, _mrk];
    } forEach medicarray;
  };

  {
    if (!(isNull _x)) then {
      _mrk = OL_EMSMarkerArray select _forEachIndex;
      _mrk setMarkerAlphaLocal 1;
      _mrk setMarkerPosLocal (getPos _x);
    } else {
      _mrk = OL_EMSMarkerArray select _forEachIndex;
      _mrk setMarkerAlphaLocal 0;
      _mrk setMarkerPosLocal [0, 0, 0];
    };
  } forEach medicarray;
};
