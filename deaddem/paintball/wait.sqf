player groupChat "You have joined the Paintball Match! Wait until both teams are full and you can play!";
_redReady = count D_PB_TeamRed;
_blueReady = count D_PB_TeamBlue;
waitUntil {_blueReady == 5 and _redReady == 5};
[] execVM "deaddem\paintball\creatematch.sqf";