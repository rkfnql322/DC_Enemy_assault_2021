/*──────────────────────────────────────────────────────┐
│   Author: Astral                                      │
│   Github: https://github.com/AstralEUD                │
│                                                       │
│   Description: For record Kill / TeamKill by iniDB2   │
│   Note: Need Optimization                             │
└──────────────────────────────────────────────────────*/
ASTAirArray = [];
AST_money_array = [];
publicVariable "ASTAirArray";
//Air Array

addMissionEventHandler ["EntityKilled",{
	params ["_killed", "_killer", "_instigator"];
	if (!isPlayer _killer) exitWith {};
	if (_killer == _killed) exitWith {};
	if (side group _killed == civilian) exitWith {
		["civ"] remoteExec ["ast_fnc_killalert", owner _killer];
	};
	if (isPlayer _killed) then {
		if (_killed isKindOf "Man" && {((side group _killed) == west or (side group _killed) == civilian)}) exitWith {
			private _killeruid = getPlayerUID _killer;
			private _nowtime = "getTimeStamp" call inidbi;
			private _tkreport = format ["TEAMKILL REPORT // Time : %1, Killer : %2, Killed : %3, Killer UID : %4",_nowtime,name _killer,name _killed,_killeruid];
			["write", ["team_kill_maindb", _nowtime, _tkreport]] call inidbi;
			["write", [_killeruid, "teamkill", _tkreport]] call inidbi;
			["teamkill",_killer] remoteExec ["ast_fnc_killalert",0];
		};
	};
	if (((_killed isKindOf "Man") && (side group _killed == east)) or ((_killed isKindOf "Man") && (side group _killed == east)))  exitWith {
		[3] remoteExec ["ast_fnc_addMoney", owner _killer];
		_randomNum = random 1;
		if (_randomNum > 0.7) then {
			_killedpos = getPosATL _killed;
			_randomMoney = selectRandom [1,1,1,1,1,1,1,1,2,2,2,2,3,3,3,3,3,3,5,5,5,8,15];
			_money = "Land_money_F" createVehicle _killedpos;
			_money setvariable ["randomMoney", _randomMoney, true];
			AST_money_array pushBack _money;
		};
	};
	if (_killed isKindOf "Tank") exitWith {
		["tank"] remoteExec ["ast_fnc_killalert", owner _killer];
	};
	if (_killed isKindOf "Helicopter") exitWith {
		["helicopter"] remoteExec ["ast_fnc_killalert", owner _killer];
	};
	if (_killed isKindOf "Plane") then {
		["plane"] remoteExec ["ast_fnc_killalert", owner _killer];
	};
}];
