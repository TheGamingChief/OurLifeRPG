GesetzArray  = [
  "Always Drive on the RIGHT side of the road",
  "Always Holster weapons in Towns.",
  "Speed limits 60 in town 90 out",
  "Governor and Gaurds May have any weapon unlicensed",
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

//kyles second script

if ((_this select 0) == "Arrested") then {
  format ['
    server globalChat "The Governor has been arrested and so laws have been reset!";
  '] call OL_network_Swag;
} else {
  format ['
    server globalChat "%1 has just reset the laws";
    if (isMayor) then { isMayor = false };
  ', PlayerName] call OL_network_Swag;
};
