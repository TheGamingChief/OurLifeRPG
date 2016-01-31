SwagCar = vehicle player;
ColorsON = true;
while {alive SwagCar} do {
 if(ColorsON) then {
  SwagCar setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,1,0,1)']";
 processInitCommands;
  sleep 1;
  SwagCar setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(1,0,0,1)']";
 processInitCommands;
  sleep 1;
  SwagCar setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(1,1,0,1)']";
 processInitCommands;
  sleep 1;
  SwagCar setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(1,1,1,1)']";
 processInitCommands;
  sleep 1;
  SwagCar setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(1,0,1,1)']";
 processInitCommands;
};
};