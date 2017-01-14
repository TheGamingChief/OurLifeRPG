 /******************************************************************************
 *                        ,1             ,-===========.
 *                       /,| _____________________\\_                _
 *    ,========.________//_|/===========._#############L_Y_....-----====//
 *   (#######(==========\################\=======.______ --############((
 *    `=======`"        ` ===============|::::.___|[ ))[JW]#############\\
 *                                       |####|     ""\###|   :##########\\
 *                                      /####/         \##\     ```"""=,,,))
 *     C R E A T E D   B Y   B T K     /####/           \##\
 *                                    '===='             `=`
 *******************************************************************************
 *
 *  The supported transporter types.
 *	Edit below.
 *
 *	You can use the whole class tree:
 *	http://community.bistudio.com/wiki/ArmA_2:_CfgVehicles
 *	http://community.bistudio.com/wiki/ArmA_2_OA:_CfgVehicles
 *
 ******************************************************************************/
_civ = player;	
 
//// Small
if (
(_Transporter isKindOf "il_silverado_pd") ||
(_Transporter isKindOf "") // No OR || after the last entry!!
) then { _SelectedTransporterTypeS = true; };

//// Medium
if (
(_Transporter isKindOf "cooter") || 
(_Transporter isKindOf "flyers") || 
(_Transporter isKindOf "") || 
(_Transporter isKindOf "") || 
(_Transporter isKindOf "") || 
(_Transporter isKindOf "")  // No OR || after the last entry!!
) then { _SelectedTransporterTypeM = true; };

//// Large
if (
//(_Transporter isKindOf "il_silverado_pd") ||
(_Transporter isKindOf "il_towtruck")
) then { _SelectedTransporterTypeL = true; };

//// XTRA Large
if (
(_Transporter isKindOf "lcu") // No OR || after the last entry!!
) then { _SelectedTransporterTypeXL = true; };

