while {player getVariable "Gagged"} do {
  taskHint ["You are gagged\nYou can't speak!", [1, 1, 1, 1], "taskNew"];
  uiSleep 10;
  if !(player getVariable "Gagged") exitwith {};
  waitUntil {(player getVariable "tf_isSpeaking")};
};
