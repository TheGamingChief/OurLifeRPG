_message = _this select 0;
if(kontostand < 1000) exitWith {
	["You do not have sufficient bank funds to make this call - ($1000)"] call D_ErrorHint;
};
(format['if(iscop) then {["%1 - CallerID: (%2)"] call D_DispatchHint};',_message,player]) call broadcast;
["The Police have been notified, A $1000 payment has been paid to the phone company for this call!"] call D_NoticeHint;
kontostand = kontostand - 1000;