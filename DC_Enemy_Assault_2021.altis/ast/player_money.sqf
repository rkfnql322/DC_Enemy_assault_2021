/*──────────────────────────────────────────────────────┐
│   Author: lululala22                                  │
│                                                       │
│   Description: Time-based reward (15m)                │
└──────────────────────────────────────────────────────*/
while {true} do {
	sleep 900;
	AST_kill_score = AST_kill_score + 15;
	[15] call AST_fnc_hud_plus;
	systemChat "15분동안 플레이하여 접속 보상이 지급되었습니다.";
	[player, "kill_score", AST_kill_score] remoteExec ["AST_fnc_db_save", 2, false];
};