/*
ScriptName: Easy NameTags
Version: 1.01
Author: Aloe {itfruit@mail.ru}
Forum: http://arma.at.ua/forum/46-10864-1
Game: Arma2
Multiplayer: not supported

Description: Only for Units! Display over head the name and type of non playble units.
Script use the 8th element in addAction params array for execute (very little CPU cost).
Thank ?? for the excellent idea!

reserved prefix: ENT_

This cscript was edited by [ILG] Jonny for use on the ILG island life server,
all credits to original author though.
*/

10 cutRsc ["ENT_playertags", "PLAIN"];


ENT_addTag = {

    if(isNil {_this getVariable "ENT_tag"})then{
    
        _this setVariable ["ENT_tag", _this addAction ["", "", "", 0, false, false, "", "
            
            _display = (uiNamespace getVariable 'ENT_playertag') select 0;
            _idc = (uiNamespace getVariable 'ENT_playertag') select 1;
            _control = _display displayCtrl _idc;
            
            _h = switch(toLower (unitPos _target))do{case 'auto':{2};case 'up':{2};case 'middle':{1.5};case 'down':{0.5};default {0}};
            _p = getPosATL _target;
            _pos = worldToScreen [_p select 0, _p select 1, _h];

            _maxDist = 15;
            _dist = round (_target distance player);
        
            if((_maxDist > _dist) &&  (alive _target) && (cursorTarget == _target) && (_target getVariable ""gagged""))then{
                if( _pos select 0 > 0.4 && _pos select 0 < 0.6 && _pos select 1 < 0.4 && _pos select 1 > 0.03 )then{
                
                    _text = gettext(configFile >> 'CfgVehicles' >> (typeof _target) >> 'displayName');
                    _wanted = call compile format ['%1_wanted', _target];
                    _name = switch (true) do
                    {
		            case (_target in civarray):
		            {
			          	parseText format [""<t size='2' shadow='true' align='center' color='#FF0000'>Gagged</t>"", _target, name _target,_text];
					};
	              };
                    _control ctrlShow true;
                    _control ctrlSetStructuredText _name;
                    _control ctrlSetPosition [(_pos select 0)-0.125,_pos select 1];
                    _control ctrlCommit 0;
                    _control ctrlSetFade ( _dist  / _maxDist );
                
                }else{_control ctrlShow false;};
            }else{_control ctrlShow false;};
            
            if(!alive _target)then{_target removeAction (_target getVariable 'ENT_tag')};
            false
            
        "]];
    };
};