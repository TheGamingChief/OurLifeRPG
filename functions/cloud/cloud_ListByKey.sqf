_key = _this select 0;


_return = [];

{
	if(_x select 2 == _key)then{
		_return set[count(_return), _x];
	};
}forEach DD_Cloud;

_return;
