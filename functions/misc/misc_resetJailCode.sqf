armat_JailCode = [5] call CP_misc_GetRandomCode;
armat_RandomCode = armat_JailCode call OL_isse_str_StrToArr;
publicVariable "armat_JailCode";
publicVariable "armat_RandomCode";

player sideChat "You reset the Jail Code!";
[[2, format["The jail code has been reset by %1!", PlayerName], "true"], "OL_misc_ChatMessage", west, false] call OL_Network_MP;
