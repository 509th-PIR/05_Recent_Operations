// JIP Check (This code should be placed first line of init.sqf file)
if (!isServer && isNull player) then {isJIP=true;} else {isJIP=false;};

//Exec Vcom AI function
[] execVM "Vcom\VcomInit.sqf";
//End of Vcom commands

//////////////////////View Distance Settings///////////////////////////////////////////////////////////////////////////////////////////

CHVD_allowNoGrass = false;
CHVD_maxView = 8000;
CHVD_maxObj = 5000;

////////////////Anit Cheat/////////////////////////////////////////////////////

// Admin and cheat mods
if (["KA_proving_ground",
	"NSS_Admin_Console",
	"MGI_TP_V3",
	"MGI_TG",
	"XEDOM_AdminTool",
	"SSPCM",
	"Revo_DC", 
	"mcc_sandbox",
	"mcc_sandbox_curatorExp",
	"sn_backpack_air",
	"sn_backpack_tt",
	"sn_backpack_sw",
	"SPCONTROLMOD",
	"targetedBUGHANDLER",
	"TPW_HUD"] apply {isClass(configFile>>"CfgPatches">>_x)} findIf {_x} > -1) then{
	["AdminMod", false, 2] call BIS_fnc_endMission;};

    //Mods banned off the Server
if (["tf47_launchers",
	"ravage",
	"BloodSplatter",
	"BloodlustLITE_Auto",
	"BloodSplatterLITE",
	"AACC",
	"KA_Suitcase_Nuke",
	"hlcweapons_M134",
	"bullet_cases"] apply {isClass(configFile>>"CfgPatches">>_x)} findIf {_x} > -1) then{
		["RestrictedMods", false, 2] call BIS_fnc_endMission;};

//arsenal Block
if (["PA_arsenal",	
	"VAS_Diag",
	"Gear_Loadout", 
	"KA_VAA",
	"vaa_arsenal",
	"nks_arsenal",
	"IA_ACE_VAA",
	"Lordeath_arsenal",
	"Roys_Arsenal"] apply {isClass(configFile>>"CfgPatches">>_x)} findIf {_x} > -1) then{
	["ArsenalMod", false, 2] call BIS_fnc_endMission;};

///////////////////////////Remove Shack Tac vis////////////////////////////////////////////////

STGI_Update = {}; 
STNT_Update ={};

///////////////////////////Damage Disabled Area////////////////////////////////////////////////

0 = [] spawn { 
    while{true} do { 
        { 
            if(_x distance (getMarkerPos "mrk_safe_zone") < 10) then {_x allowDamage false} else {_x allowDamage true}; 
        } forEach allUnits + vehicles; 
        sleep 1; 
    }; 
};

///////////////////////////End Loading Screen////////////////////////////////////////////////

_EndSplashScreen = {
    for "_x" from 1 to 4 do {
        endLoadingScreen;
        sleep 3;
    };
};

[] spawn _EndSplashScreen;