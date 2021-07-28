CASsubMenu =

[
["Attack Aircraft",true],

["Attack Aircraft", [0],"",-2,[["expression", ""]], "1", "0"], // header text 

["Attack Helicopter", [2], "", -5, [["expression", "ghst_helosupport = [(getmarkerpos ""ghst_player_support""),ghst_attachhelo,30,[400, 150],PARAM_Cooldowns,[false,""ColorRed""],""ghst_helosup""] spawn ghst_fnc_airsupport;"]], "1", "1"],

["Attack Aircraft", [3], "", -5, [["expression", "ghst_cassupport = [(getmarkerpos ""ghst_player_support""),ghst_attackplane,30,[600, 600],PARAM_Cooldowns,[false,""ColorRed""],""ghst_cassup""] spawn ghst_fnc_airsupport;"]], "1", "1"]

];

UavsubMenu =

[
["Unmanned Support",true],

["Unmanned Support", [0],"",-2,[["expression", ""]], "1", "0"], // header text 

["UAV List", [2], "", -5, [["expression", "ghst_uavsupport = [(getmarkerpos ""ghst_player_support""),ghst_uavList,100,PARAM_Cooldowns] spawn ghst_fnc_uavsupport;"]], "1", "1"],

["AR-2 Darter", [3], "", -5, [["expression", "ghst_puavsupport = [""B_UAV_01_F"",5] spawn ghst_fnc_puavsupport;"]], "1", "1"],

["UGV List", [4], "", -5, [["expression", "ghst_ugvsupport = [(getmarkerpos ""ghst_player_support""),ghst_ugvList,2,PARAM_Cooldowns] spawn ghst_fnc_ugvsupport;"]], "1", "1"]

];

CargodropsubMenu =

[
["Cargo Drop",true],

["Cargo Drop", [0],"",-2,[["expression", ""]], "1", "0"], // header text 

["Cars and Trucks", [2], "", -5, [["expression", "ghst_drop = [player,(getmarkerpos ""ghst_player_support""),ghst_air_cargo,ghst_carlist,200,PARAM_Cooldowns] spawn ghst_fnc_cargodrop;"]], "1", "1"],

["Armor", [3], "", -5, [["expression", "ghst_drop = [player,(getmarkerpos ""ghst_player_support""),ghst_air_cargo,ghst_armorlist,200,PARAM_Cooldowns] spawn ghst_fnc_cargodrop;"]], "1", "1"],

["Static", [4], "", -5, [["expression", "ghst_drop = [player,(getmarkerpos ""ghst_player_support""),ghst_air_cargo,ghst_staticvehlist,200,PARAM_Cooldowns] spawn ghst_fnc_cargodrop;"]], "1", "1"],

["Boats", [5], "", -5, [["expression", "ghst_drop = [player,(getmarkerpos ""ghst_player_support""),ghst_air_cargo,ghst_boatlist,200,PARAM_Cooldowns] spawn ghst_fnc_cargodrop;"]], "1", "1"]

];

AmmodropsubMenu =

[
["Ammo Drop",true],

["Ammo Drop", [0],"",-2,[["expression", ""]], "1", "0"], // header text 

["Magazine Resupply", [2], "", -5, [["expression", "ghst_ammodrop = [player,(getmarkerpos ""ghst_player_support""),ghst_air_cargo,""B_supplyCrate_F"",ghst_fnc_mags,150,PARAM_Cooldowns] spawn ghst_fnc_ammodrop;"]], "1", "1"],

["Full Arsenal Resupply", [3], "", -5, [["expression", "ghst_ammodrop = [player,(getmarkerpos ""ghst_player_support""),ghst_air_cargo,""B_supplyCrate_F"",ghst_fnc_arsenal,150,PARAM_Cooldowns] spawn ghst_fnc_ammodrop;"]], "1", "1"]

];

TransportsubMenu =

[
["Helicopter Airlift",true],

["Helicopter Airlift", [0],"",-2,[["expression", ""]], "1", "0"], // header text 

["Infantry Transport", [2], "", -5, [["expression", "ghst_transport = [ghst_helotranslist,ghst_heloattacklist,(getposasl helortb),50,PARAM_Cooldowns] spawn ghst_fnc_init_transport;"]], "1", "1"],

["Cargo Lift RTB", [4], "", -5, [["expression", "ghst_airlift = [ghst_helotranslist,(getmarkerpos ""ghst_player_support""),(getposasl obj_drop),50,PARAM_Cooldowns,false] spawn ghst_fnc_init_airlift;"]], "1", "1"],

["Cargo Lift Destination", [5], "", -5, [["expression", "ghst_airlift = [ghst_helotranslist,(getmarkerpos ""ghst_player_support""),(getposasl obj_drop),50,PARAM_Cooldowns,true] spawn ghst_fnc_init_airlift;"]], "1", "1"]

];

GroupsubMenu = 

[
["Group Management",true],

["Group Management", [0],"",-2,[["expression", ""]], "1", "0"], // header text 

["Disband Selected Unit", [2], "", -5, [["expression", "{deletevehicle _x} foreach groupSelectedUnits player; hint 'Units disbanded';"]], "1", "1"],

["Disband Squad", [3], "", -5, [["expression", "deleteai = [] spawn ghst_fnc_delete_aigroup;"]], "1", "1"]

];

SettingsubMenu = 

[
["Settings",true],

["Settings", [0],"",-2,[["expression", ""]], "1", "0"], // header text 

["View Distance", [2], "", -5, [["expression", "chvd = [] spawn CHVD_fnc_openDialog;"]], "1", "1"],

["Add Designator Battery", [3], "", -5, [["expression", "player addmagazine 'laserbatteries';"]], "1", "1"],

["Show Chat", [4], "", -5, [["expression", "showchat true;"]], "1", "1"],

["Count Unit Numbers", [5], "", -5, [["expression", "call ghst_fnc_countai"]], "1", "1"],

["Set All Tasks Complete Debug", [6], "", -5, [["expression", "[player] remoteExec ['ghst_fnc_debugtasks',2];"]], "1", "1"]

];