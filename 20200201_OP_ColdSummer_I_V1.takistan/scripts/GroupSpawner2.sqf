//nul = execVM "GroupSpawner1.sqf";

//_crew1 = [];

//_airframe1 = [];

//_crew1 = creategroup WEST;
//_airframe1 = [getMarkerPos "marker", bearing, "vehicle classname", _crew1] call BIS_fnc_spawnVehicle;
_team4 = [];
_team5 = [];
_team6 = [];
_team7 = [];
_team8 = [];
_team9 = [];
_landframe1 = [];
_crew1 = [];

if (isServer) then {
_team4 = [getmarkerpos "ins_4", east, ["LOP_ISTS_OPF_Infantry_TL",
"LOP_ISTS_OPF_Infantry_AR",
"LOP_ISTS_OPF_Infantry_AR_Asst",
"LOP_ISTS_OPF_Infantry_AT",
"LOP_ISTS_OPF_Infantry_GL",
"LOP_ISTS_OPF_Infantry_Rifleman_5"],[],[],[],[],[],0] call BIS_fnc_spawnGroup;

_wp1 = _team4 addWaypoint [getmarkerpos "wp1_4", 0];
    _wp1 setWaypointType "MOVE"; 
    _wp1 setWaypointSpeed "FULL";
    _wp1 setWaypointBehaviour "SAFE";
    _wp1 setWaypointFormation "DIAMOND";




_team5 = [getmarkerpos "ins_5", east, ["LOP_ISTS_OPF_Infantry_TL",
"LOP_ISTS_OPF_Infantry_AR",
"LOP_ISTS_OPF_Infantry_AR_Asst",
"LOP_ISTS_OPF_Infantry_AT",
"LOP_ISTS_OPF_Infantry_GL",
"LOP_ISTS_OPF_Infantry_Rifleman_5"],[],[],[],[],[],0] call BIS_fnc_spawnGroup;

_wp1 = _team5 addWaypoint [getmarkerpos "wp1_5", 0];
    _wp1 setWaypointType "MOVE"; 
    _wp1 setWaypointSpeed "FULL";
    _wp1 setWaypointBehaviour "SAFE";
    _wp1 setWaypointFormation "COLOUMN";



_team6 = [getmarkerpos "ins_6", east, ["LOP_ISTS_OPF_Infantry_TL",
"LOP_ISTS_OPF_Infantry_AR",
"LOP_ISTS_OPF_Infantry_AR_Asst",
"LOP_ISTS_OPF_Infantry_AT",
"LOP_ISTS_OPF_Infantry_GL",
"LOP_ISTS_OPF_Infantry_Rifleman_5"],[],[],[],[],[],0] call BIS_fnc_spawnGroup;

_wp1 = _team6 addWaypoint [getmarkerpos "wp1_6", 0];
    _wp1 setWaypointType "MOVE"; 
    _wp1 setWaypointSpeed "FULL";
    _wp1 setWaypointBehaviour "SAFE";
    _wp1 setWaypointFormation "COLOUMN";

	

sleep 120;


_team7 = [getmarkerpos "ins_4", east, ["LOP_ISTS_OPF_Infantry_TL",
"LOP_ISTS_OPF_Infantry_AR",
"LOP_ISTS_OPF_Infantry_AR_Asst",
"LOP_ISTS_OPF_Infantry_AT",
"LOP_ISTS_OPF_Infantry_GL",
"LOP_ISTS_OPF_Infantry_Rifleman_5"],[],[],[],[],[],0] call BIS_fnc_spawnGroup;

_wp1 = _team7 addWaypoint [getmarkerpos "wp1_4", 0];
    _wp1 setWaypointType "MOVE"; 
    _wp1 setWaypointSpeed "FULL";
    _wp1 setWaypointBehaviour "SAFE";
    _wp1 setWaypointFormation "DIAMOND";

_team8 = [getmarkerpos "ins_5", east, ["LOP_ISTS_OPF_Infantry_TL",
"LOP_ISTS_OPF_Infantry_AR",
"LOP_ISTS_OPF_Infantry_AR_Asst",
"LOP_ISTS_OPF_Infantry_AT",
"LOP_ISTS_OPF_Infantry_GL",
"LOP_ISTS_OPF_Infantry_Rifleman_5"],[],[],[],[],[],0] call BIS_fnc_spawnGroup;

_wp1 = _team8 addWaypoint [getmarkerpos "wp1_5", 0];
    _wp1 setWaypointType "MOVE"; 
    _wp1 setWaypointSpeed "FULL";
    _wp1 setWaypointBehaviour "SAFE";
    _wp1 setWaypointFormation "DIAMOND";    

_team9 = [getmarkerpos "ins_6", east, ["LOP_ISTS_OPF_Infantry_TL",
"LOP_ISTS_OPF_Infantry_AR",
"LOP_ISTS_OPF_Infantry_AR_Asst",
"LOP_ISTS_OPF_Infantry_AT",
"LOP_ISTS_OPF_Infantry_GL",
"LOP_ISTS_OPF_Infantry_Rifleman_5"],[],[],[],[],[],0] call BIS_fnc_spawnGroup;

_wp1 = _team9 addWaypoint [getmarkerpos "wp1_6", 0];
    _wp1 setWaypointType "MOVE"; 
    _wp1 setWaypointSpeed "FULL";
    _wp1 setWaypointBehaviour "SAFE";
    _wp1 setWaypointFormation "DIAMOND";

_crew1 = creategroup EAST;
_landframe1 = [getMarkerPos "vins_2", 7,"LOP_TKA_T72BA", _crew1] call BIS_fnc_spawnVehicle;

_wp1 = _crew1 addWaypoint [getmarkerpos "vwp1_2", 0];
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