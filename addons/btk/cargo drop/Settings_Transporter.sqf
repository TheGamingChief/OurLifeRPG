_civ = player;

//// Small
if (
(_Transporter isKindOf "il_silverado_pd") ||
(_Transporter isKindOf "") // No OR || after the last entry!!
) then { _SelectedTransporterTypeS = true };

//// Medium
if (
(_Transporter isKindOf "cooter") ||
(_Transporter isKindOf "flyers") ||
(_Transporter isKindOf "") ||
(_Transporter isKindOf "") ||
(_Transporter isKindOf "")  // No OR || after the last entry!!
) then { _SelectedTransporterTypeM = true };

//// Large
if (
//(_Transporter isKindOf "il_silverado_pd") ||
(_Transporter isKindOf "il_towtruck")
) then { _SelectedTransporterTypeL = true };

//// XTRA Large
if (
(_Transporter isKindOf "lcu") // No OR || after the last entry!!
) then { _SelectedTransporterTypeXL = true };
