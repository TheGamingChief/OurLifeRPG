fn_buildnearest = {
	_obj = _this select 0;
	_range = _this select 1;
	_pos = _this select 2;

	_return = [];
	_buildList = nearestobjects [_pos, [_obj], _range];
	if(count _buildList > 1) then {
		_return = _buildList;
	};
	_return
};
fn_GrabNearPeopleAndCheckTheirBlackAssesNigga = {
	_array = _this select 0;
	_obj = _this select 1;	
	_return = false;
	
};

fn_global_cleardone = true;