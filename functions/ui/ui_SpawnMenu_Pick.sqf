disableSerialization;
_array = OL_SpawnPoints select (lbCurSel 4569);

if ((getPlayerUID player) in (call compile (_array select 4))) then {
  call compile "if (_array select 3 == west) then { iscop = true }";

  player setPos (_array select 1);
  player enableSimulation true;
  player allowDamage true;

  format['%1 switchMove ""', player] call swag;
  closeDialog 0;
} else {
  systemChat "Sorry, You're not whitelisted for this spawn!";
};
