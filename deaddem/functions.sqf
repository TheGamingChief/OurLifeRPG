// Penis loves genovah
// genovah loves Penis
AM_f_IsInArray = {
	_find = _this select 0;
	_array = _this select 1;
	_result = false;
	if(_find in _array) then{
		_result = true;
	};
	_result;
};