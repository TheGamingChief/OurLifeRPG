_text = _this select 0;
_Stxt = parseText format
["
<t color='#ffff00' size='2.5'>Notice</t><br/>
-------------------------------------<br/>
<t color='#FFFFFF'>%1</t>
",_text];
hintSilent _Stxt;
shopactivescript = 0; // Strange Bug..
