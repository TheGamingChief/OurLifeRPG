D_GovernerHint = {
_text = _this select 0;
_Stxt = parseText format
["
<t color='#F6FF00' size='2.5'>Government Notice</t><br/>
-------------------------------------<br/>
<t color='#FFFFFF'>%1</t>
",_text];
hintSilent _Stxt;
};