addMissionEventHandler ["PlayerConnected",
{
	params ["_id", "_uid", "_name", "_jip", "_owner"];
	//_score = ["read", [_uid, "kill_score", 30]] call inidbi;
	//[_score] remoteExec ["ast_fnc_addMoney", _owner];
	private _SystemLimited = ["B_Respawn_sleeping_bag_blue_F","B_Respawn_sleeping_bag_brown_F","B_Respawn_TentDome_F","B_Patrol_Respawn_bag_F","B_Respawn_TentA_F","B_Mortar_01_support_F","B_Mortar_01_weapon_F","O_Mortar_01_support_F","O_Mortar_01_weapon_F","I_Mortar_01_support_F","I_Mortar_01_weapon_F","I_E_Mortar_01_support_F","I_E_Mortar_01_weapon_F"];

	AST_limitedItems = _SystemLimited;
	_owner publicVariableClient "AST_limitedItems";
	AST_weaponlist = ["optic_Nightstalker","optic_NVS","optic_tws","optic_tws_mg"];
	AST_purchased = [];
	AST_remain = [];
	{
		_check = ["read", [_uid, _x, false]] call _inidbi;
		if (_check == true) then {
			AST_purchased pushBack _x;
		} else {
			AST_remain pushBack _x;
		}
	} forEach AST_weaponlist;
	AST_limitedItems = AST_limitedItems - AST_purchased;
	_id publicVariableClient "AST_remain";
}];

AST_weaponPrice = [["optic_Nightstalker",2000],
["optic_NVS",2000],
["optic_tws",2000],
["optic_tws_mg",2000]];

publicVariable "AST_weaponPrice";
// Server-side Function to get Specific Weapon / Attachment's purchased information

