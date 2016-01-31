DD_f_KeyDown = {
	_key = _this select 1;
	_shift = _this select 2;
	_ctrl = _this select 3;
	_alt = _this select 4;
	_handled = false;

	switch(_key)do{
		case 59:
		{
			if(vehicle player == player)exitWith{};
			if(!isCop)exitWith{};
			if(call idfly)exitWith{};
			if(_ctrl)then{
				if(fn_SirenMode == 1)then{
					'{
						_x call DD_f_DeleteSirenVehicle;
					}forEach strn_array;' call broadcast;
				};
				fn_SirenMode = 0;
				if(!(typeName strn == "STRING"))then{
					format['["vicsiren1", %1] spawn DD_f_PlaySirenSound;', player] call broadcast;
				}else{	
					'{
						_x call DD_f_DeleteSirenVehicle;
					}forEach strn_array;' call broadcast;
				};
			}else{
				if(fn_SirenMode == 1)exitWith{};
				if(fn_SirenMode == 0)then{
					'{
						_x call DD_f_DeleteSirenVehicle;
					}forEach strn_array;' call broadcast;
				};

				fn_SirenMode = 1;
				format['["vicsiren1", %1] spawn DD_f_PlaySirenSound', player] call broadcast;
			};	
			_handled = true;
		};
		case 60:
		{
			if(vehicle player == player)exitWith{};
			if(!isCop)exitWith{};
			if(call idfly)exitWith{};
			if(_ctrl)then{
				if(fn_SirenMode == 1)then{
					'{
						_x call DD_f_DeleteSirenVehicle;
					}forEach strn_array;' call broadcast;
				};
				fn_SirenMode = 0;
				if(!(typeName strn == "STRING"))then{
					format['["vicsiren2", %1] spawn DD_f_PlaySirenSound;', player] call broadcast;
				}else{	
					'{
						_x call DD_f_DeleteSirenVehicle;
					}forEach strn_array;' call broadcast;
				};
			}else{
				if(fn_SirenMode == 1)exitWith{};
				if(fn_SirenMode == 0)then{
					'{
						_x call DD_f_DeleteSirenVehicle;
					}forEach strn_array;' call broadcast;
				};

				fn_SirenMode = 1;
				format['["vicsiren2", %1] spawn DD_f_PlaySirenSound', player] call broadcast;
			};	
			_handled = true;
		};
		case 62:
		{
			'if(isnIl "strn_array")exitWith{};
			{
				_x call DD_f_DeleteSirenVehicle;
			}forEach strn_array;' call broadcast;
		};	
	};

	_handled;
};
DD_f_keyUp = {
	_key = _this select 1;
	_shift = _this select 2;
	_ctrl = _this select 3;
	_alt = _this select 4;
	_handled = false;
	_sirenKeys = [59,60,61,62];
	if(_key in _sirenKeys)then{
		if(vehicle player == player)exitWith{};
		if(fn_SirenMode == 1)then{
			fn_SirenMode =0;
			'{
				_x call DD_f_DeleteSirenVehicle;
			}forEach strn_array;' call broadcast;
		};
		_handled = true;
	};
	_handled;
};