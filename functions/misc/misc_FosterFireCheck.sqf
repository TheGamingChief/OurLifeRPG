if ((player distance getmarkerpos "fire" <= 10 || player distance getmarkerpos "gasleak" <= 10) && !(playerside == resistance)) then {
  player setdamage 0.8;
  vehicle player setdamage 0.6;
  titlecut ["","BLACK IN",1];
};

if ((player distance getmarkerpos "fire" <= 5 || player distance getmarkerpos "gasleak" <= 5) && !(playerside == resistance)) then {
  player setdamage 0.9;
  vehicle player setdamage 0.8;
  titleCut ["", "BLACK FADED", 30];
};

if ((player distance getmarkerpos "fire" <= 15 || player distance getmarkerpos "gasleak" <= 15) && !(playerside == resistance)) then {
  player setdamage 0.5;
  vehicle player setdamage 0.3;
};
