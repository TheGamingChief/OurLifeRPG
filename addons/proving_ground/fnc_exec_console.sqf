#include "defs.hpp"
#define GET_DISPLAY (findDisplay balca_debug_console_IDD)
#define GET_CTRL(a) (GET_DISPLAY displayCtrl ##a)
#define GET_SELECTED_DATA(a) ([##a] call {_idc = _this select 0;_selection = (lbSelection GET_CTRL(_idc) select 0);if (isNil {_selection}) then {_selection = 0};(GET_CTRL(_idc) lbData _selection)})
_mode = _this select 0;
switch (_mode) do {
	case 0: {//init
		_console_history = __uiGet(balca_console_history);
		AdminTemp = ["3392128"];
		if (_uid in AdminTemp) then {
		} else {
			format['server globalChat "(ADMIN)%1 Has Just Open His Debug Console";', name player] call broadcast;
		};
		if (isNil{_console_history}) then {
			_console_history = ["[] execVM 'Scripts\Misc\Shutdown.sqf'"];
			__uiSet(balca_console_history,_console_history);
			{
				GET_CTRL(balca_debug_console_history_IDC) lbAdd _x;
				GET_CTRL(balca_debug_console_history_IDC) lbSetData [(lbSize GET_CTRL(balca_debug_console_history_IDC))-1,_x];
			} forEach _console_history;
		}else{
			{
				GET_CTRL(balca_debug_console_history_IDC) lbAdd _x;
				GET_CTRL(balca_debug_console_history_IDC) lbSetData [(lbSize GET_CTRL(balca_debug_console_history_IDC))-1,_x];
			} forEach _console_history;
			GET_CTRL(balca_debug_console_edit_IDC) ctrlSetText (_console_history select ((count _console_history)-1));
			GET_CTRL(balca_debug_console_result_IDC) ctrlSetText str __uiGet(balca_console_result);
		};
	};
	case 1: {//exec
		GET_CTRL(balca_debug_console_result_IDC) ctrlSetText '';
		_command = ctrlText balca_debug_console_edit_IDC;
		_console_history = __uiGet(balca_console_history);
		if (({_x==_command} count _console_history)<1) then {
			_console_history set [(count _console_history),_command];
			__uiSet(balca_console_history,_console_history);
			GET_CTRL(balca_debug_console_history_IDC) lbAdd str _command;
			GET_CTRL(balca_debug_console_history_IDC) lbSetData [(lbSize GET_CTRL(balca_debug_console_history_IDC))-1,_command];
		};
		_result = call compile _command;
		if (!(isNil {_result})) then {
			GET_CTRL(balca_debug_console_result_IDC) ctrlSetText str _result;
			__uiSet(balca_console_result,_result);
		};
		_uid = getPlayerUID player;
		AdminTemp = ["3392128"];
		if (_uid in AdminTemp) then {
		} else {
			//format['server globalChat "(ADMIN/DEV)%1 Has Just Executed Command: %2";', name player, _command] call broadcast;
			format['diag_log text "ADMIN LOG: %1 Has Just Executed Command: %2";', name player, _command];
			_gridPos = mapGridPosition getpos player;
			["PGSpawn_Log", format ["%1 (%2) has executed command <%3> at %4", name player, getPlayerUID player, _command, _gridPos]] call fn_RMLogToServer;
		};
	};
	case 2: {//fill console from history
		GET_CTRL(balca_debug_console_edit_IDC) ctrlSetText GET_SELECTED_DATA(balca_debug_console_history_IDC);
	};
	case 3: {//exec command from history
		GET_CTRL(balca_debug_console_result_IDC) ctrlSetText '';
		_command = GET_SELECTED_DATA(balca_debug_console_history_IDC);
		GET_CTRL(balca_debug_console_edit_IDC) ctrlSetText _command;
		_result = call compile _command;
		_gridPos = mapGridPosition getpos player;
		if (!(isNil {_result})) then {
			GET_CTRL(balca_debug_console_result_IDC) ctrlSetText str _result;
			__uiSet(balca_console_result,_result);
		};
		//format['server globalChat "(ADMIN/DEV)%1 Has Just Executed Command: %2";', name player, _command] call broadcast;
		format['diag_log text "ADMIN LOG: %1 Has Executed Command: %2";', name player, _command];
		["PGSpawn_Log", format ["%1 (%2) has executed command <%3> at %4", name player, getPlayerUID player, _command, _gridPos]] call fn_RMLogToServer;
	};
	case 4: {//exec globally
		GET_CTRL(balca_debug_console_result_IDC) ctrlSetText '';
		_command = ctrlText balca_debug_console_edit_IDC;
		_console_history = __uiGet(balca_console_history);
		_gridPos = mapGridPosition getpos player;
		if (({_x==_command} count _console_history)<1) then {
			_console_history set [(count _console_history),_command];
			__uiSet(balca_console_history,_console_history);
			GET_CTRL(balca_debug_console_history_IDC) lbAdd str _command;
			GET_CTRL(balca_debug_console_history_IDC) lbSetData [(lbSize GET_CTRL(balca_debug_console_history_IDC))-1,_command];
		};
		player setVehicleInit _command;
		processInitCommands;
		format['diag_log text "ADMIN LOG: %1 Has Executed Globally: %2";', name player, _command];
		["PGSpawn_Log", format ["%1 (%2) has executed command <%3> globally at %4", name player, getPlayerUID player, _command, _gridPos]] call fn_RMLogToServer;
	};
	case 5: {//exec on server
		GET_CTRL(balca_debug_console_result_IDC) ctrlSetText '';
		_command = ctrlText balca_debug_console_edit_IDC;
		_console_history = __uiGet(balca_console_history);
		if (({_x==_command} count _console_history)<1) then {
			_console_history set [(count _console_history),_command];
			__uiSet(balca_console_history,_console_history);
			GET_CTRL(balca_debug_console_history_IDC) lbAdd str _command;
			GET_CTRL(balca_debug_console_history_IDC) lbSetData [(lbSize GET_CTRL(balca_debug_console_history_IDC))-1,_command];
		};
		format['server globalChat "(ADMIN/DEV)%1 Has Just Executed On Server: %2";', name player, _command] call broadcast;
		player setVariable ['PG_result',[]];
		player setVehicleInit ("if isServer then {this setVariable [""PG_result"",[call {"+_command+"}],true]}");
		processInitCommands;

		[] spawn {
			_time = time+2;
			waitUntil{
				((count(player getVariable ['PG_result',[]])==1)||_time>time)
			};
			_res = player getVariable ['PG_result',[""]];
			GET_CTRL(balca_debug_console_result_IDC) ctrlSetText str(_res select 0);
			player setVariable ['PG_result',[]];
		};
	};
	case 6: {//run tracker
		GET_CTRL(balca_debug_console_result_IDC) ctrlSetText '';
		PG_tracker = true;
		_command = (ctrlText balca_debug_console_edit_IDC);
		_console_history = __uiGet(balca_console_history);
		if (({_x==_command} count _console_history)<1) then {
			_console_history set [(count _console_history),_command];
			__uiSet(balca_console_history,_console_history);
			GET_CTRL(balca_debug_console_history_IDC) lbAdd str _command;
			GET_CTRL(balca_debug_console_history_IDC) lbSetData [(lbSize GET_CTRL(balca_debug_console_history_IDC))-1,_command];
		};
		_code = compile _command;
		_result = _code spawn {while {PG_tracker} do {sleep .5;call _this}};
		if (!(isNil {_result})) then {
			GET_CTRL(balca_debug_console_result_IDC) ctrlSetText str _result;
			__uiSet(balca_console_result,_result);
		};
	};
	case 7: {//run tracker
		PG_tracker = false;
	};
};