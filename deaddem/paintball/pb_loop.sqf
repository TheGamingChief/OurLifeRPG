hint "loop";
timer = 330;
while {(timer >= 0) and D_PB_InSession} do {
	player allowDamage false;
	hintSilent parsetext format ["<t color='#FF3B3E' size='1.5'>Time Left in Match:</t><br/>
	<t color='#FFFFFF'>%1</t>",(timer / 3600) call compile loadfile "time.sqf"];
    timer = timer - 1;
    sleep 1;
    player allowdamage false;
    if(timer == 0) exitWith{[] execVM "deaddem\paintball\endmatch.sqf"};
};