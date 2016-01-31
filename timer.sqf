titleText [format["Our Life RPG Cicada Server is going to restart soon!"],"PLAIN"];
if(TimerActive) exitWith {player sideChat "Server Restart Countdown already running!"};
TimerActive = true;
publicvariable "TimerActive";
timer =_this select 0;  //Passed from GUI
publicvariable "timer";
//player sideChat format["You have set the restart timer to: %1sec",timer];
while {(timer >= 0)} do {
hintSilent parsetext format ["<t color='#FF3B3E' size='1.5'>Server Restarting in:</t><br/>
<t color='#FFFFFF'>%1</t>",(timer / 3600) call compile loadfile "time.sqf"];
      timer = timer - 1;
      sleep 1;
};
timer = 0;
sleep 1;
hintSilent parsetext format ["<t color='#99D5FF' size='1.5'>Server is Restarting!!</t><br/>"];
sleep 5;
TimerActive = false;