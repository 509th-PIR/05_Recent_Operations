//nul = execVM "GroupSpawner1.sqf";

//_crew1 = [];

//_airframe1 = [];

//_crew1 = creategroup WEST;
//_airframe1 = [getMarkerPos "marker", bearing, "vehicle classname", _crew1] call BIS_fnc_spawnVehicle;
_team1 = [];
_team2 = [];
_team3 = [];
_team10 = [];
_team11 = [];
_team12 = [];
_landframe18 = [];
_crew18 = [];

if (isServer) then {
_team1 = [getmarkerpos "ins_1", east, ["LOP_ISTS_OPF_Infantry_TL",
"LOP_ISTS_OPF_Infantry_AR",
"LOP_ISTS_OPF_Infantry_AR_Asst",
"LOP_ISTS_OPF_Infantry_AT",
"LOP_ISTS_OPF_Infantry_GL",
"LOP_ISTS_OPF_Infantry_Rifleman_5"],[],[],[],[],[],0] call BIS_fnc_spawnGroup;

_wp1 = _team1 addWaypoint [getmarkerpos "wp1_1", 0];
    _wp1 setWaypointType "MOVE"; 
    _wp1 setWaypointSpeed "FULL";
    _wp1 setWaypointBehaviour "SAFE";
    _wp1 setWaypointFormation "DIAMOND";




_team2 = [getmarkerpos "ins_2", east, ["LOP_ISTS_OPF_Infantry_TL",
"LOP_ISTS_OPF_Infantry_AR",
"LOP_ISTS_OPF_Infantry_AR_Asst",
"LOP_ISTS_OPF_Infantry_AT",
"LOP_ISTS_OPF_Infantry_GL",
"LOP_ISTS_OPF_Infantry_Rifleman_5"],[],[],[],[],[],0] call BIS_fnc_spawnGroup;

_wp1 = _team2 addWaypoint [getmarkerpos "wp1_2", 0];
    _wp1 setWaypointType "MOVE"; 
    _wp1 setWaypointSpeed "FULL";
    _wp1 setWaypointBehaviour "SAFE";
    _wp1 setWaypointFormation "COLOUMN";



_team3 = [getmarkerpos "ins_3", east, ["LOP_ISTS_OPF_Infantry_TL",
"LOP_ISTS_OPF_Infantry_AR",
"LOP_ISTS_OPF_Infantry_AR_Asst",
"LOP_ISTS_OPF_Infantry_AT",
"LOP_ISTS_OPF_Infantry_GL",
"LOP_ISTS_OPF_Infantry_Rifleman_5"],[],[],[],[],[],0] call BIS_fnc_spawnGroup;

_wp1 = _team3 addWaypoint [getmarkerpos "wp1_3", 0];
    _wp1 setWaypointType "MOVE"; 
    _wp1 setWaypointSpeed "FULL";
    _wp1 setWaypointBehaviour "SAFE";
    _wp1 setWaypointFormation "LINE";

	

sleep 120;


_team10 = [getmarkerpos "ins_1", east, ["LOP_ISTS_OPF_Infantry_TL",
"LOP_ISTS_OPF_Infantry_AR",
"LOP_ISTS_OPF_Infantry_AR_Asst",
"LOP_ISTS_OPF_Infantry_AT",
"LOP_ISTS_OPF_Infantry_GL",
"LOP_ISTS_OPF_Infantry_Rifleman_5"],[],[],[],[],[],0] call BIS_fnc_spawnGroup;

_wp1 = _team10 addWaypoint [getmarkerpos "wp1_1", 0];
    _wp1 setWaypointType "MOVE"; 
    _wp1 setWaypointSpeed "FULL";
    _wp1 setWaypointBehaviour "SAFE";
    _wp1 setWaypointFormation "DIAMOND";

_team11 = [getmarkerpos "ins_2", east, ["LOP_ISTS_OPF_Infantry_TL",
"LOP_ISTS_OPF_Infantry_AR",
"LOP_ISTS_OPF_Infantry_AR_Asst",
"LOP_ISTS_OPF_Infantry_AT",
"LOP_ISTS_OPF_Infantry_GL",
"LOP_ISTS_OPF_Infantry_Rifleman_5"],[],[],[],[],[],0] call BIS_fnc_spawnGroup;

_wp1 = _team11 addWaypoint [getmarkerpos "wp1_2", 0];
    _wp1 setWaypointType "MOVE"; 
    _wp1 setWaypointSpeed "FULL";
    _wp1 setWaypointBehaviour "SAFE";
    _wp1 setWaypointFormation "DIAMOND";    

_team12 = [getmarkerpos "ins_3", east, ["LOP_ISTS_OPF_Infantry_TL",
"LOP_ISTS_OPF_Infantry_AR",
"LOP_ISTS_OPF_Infantry_AR_Asst",
"LOP_ISTS_OPF_Infantry_AT",
"LOP_ISTS_OPF_Infantry_GL",
"LOP_ISTS_OPF_Infantry_Rifleman_5"],[],[],[],[],[],0] call BIS_fnc_spawnGroup;

_wp1 = _team12 addWaypoint [getmarkerpos "wp1_3", 0];
    _wp1 setWaypointType "MOVE"; 
    _wp1 setWaypointSpeed "FULL";
    _wp1 setWaypointBehaviour "SAFE";
    _wp1 setWaypointFormation "DIAMOND";

_crew18 = creategroup EAST;
_landframe18 = [getMarkerPos "vins_1", 7,"LOP_TKA_T72BA", _crew18] call BIS_fnc_spawnVehicle;

_wp1 = _crew18 addWaypoint [getmarkerpos "vwp1_1", 0];
	_wp1 setWaypointType "MOVE"; 
	_wp1 setWaypointSpeed "NORMAL";


};





//_wp1 = _crew1 addWaypoint [getmarkerpos "wp1_1", 0];
//	_wp1 setWaypointType "TR UNLOAD"; 
//	_wp1 setWaypointSpeed "FULL";
//	_wp1 setwaypointstatements ["this land 'land'"];

//_mygroup = [getmarkerpos "EXAMPLE VARIABLE NAME", Side, ["Class_Name"],[],[],[],[],[],Spawn bearing] call BIS_fnc_spawnGroup;
//_wp1a = _mygroup addWaypoint [getmarkerpos "wp1_1", 0];

//sleep x;
//_mygroup = _mygroup;
//{_x assignAsCargo (_airframe1 select 0); _x moveInCargo (airframe1 select 0);} foreach units _mygroup;
// add }; at the end