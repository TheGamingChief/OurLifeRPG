switch (_this select 0) do {
  case ("ERROR"): { systemChat format ["[Paintball Error] %1", _this select 1] };
  case ("SUCCE"): { systemChat format ["[Paintball] %1", _this select 1] };
};
