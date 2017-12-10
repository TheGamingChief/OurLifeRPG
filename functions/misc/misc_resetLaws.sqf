GesetzArray  = [
  "Always Drive on the RIGHT side of the road",
  "Always Holster weapons in Towns.",
  "Speed limits 60 in town 90 out",
  "Governor and Guards May have any weapon unlicensed",
  "Governor is immune to traffic laws if his life is in danger",
  "",
  "",
  "",
  "",
  ""
];
publicVariable "GesetzArray";

(INV_ItemTypenArray select 0) SET [2, 5];
(INV_ItemTypenArray select 1) SET [2, 5];
(INV_ItemTypenArray select 2) SET [2, 5];
(INV_ItemTypenArray select 3) SET [2, 5];
publicVariable "INV_ItemTypenArray";
bank_steuer = 5;
publicVariable "bank_steuer";
MayorNumber = -1;
publicVariable "MayorNumber";

if ((_this select 0) == "Arrested") then {
  format ['
    server globalChat "The Governor has been arrested and so laws have been reset!";
    false call OL_misc_TurnMayor;
    if (isMayor) then { isMayor = false };
  '] call OL_network_Swag;
} else {
  format ['
    server globalChat "%1 has just reset the laws";
    false call OL_misc_TurnMayor;
    if (isMayor) then { isMayor = false };
  ', PlayerName] call OL_network_Swag;
};
