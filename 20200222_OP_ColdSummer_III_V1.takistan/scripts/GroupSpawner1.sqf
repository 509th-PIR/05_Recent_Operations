//nul = execVM "GroupSpawner1.sqf";

//_crew1 = [];

//_airframe1 = [];

//_crew1 = creategroup WEST;
//_airframe1 = [getMarkerPos "marker", bearing, "vehicle classname", _crew1] call BIS_fnc_spawnVehicle;

_landframe1 = [];
_crew1 = [];
_landframe2 = [];
_crew2 = [];
_landframe3 = [];
_crew3 = [];

if (isServer) then {

_crew1 = creategroup WEST;
_landframe1 = [getMarkerPos "ins_1", 7,"rhsusf_m1a2sep1tuskiid_usarmy", _crew1] call BIS_fnc_spawnVehicle;

_wp1 = _crew1 addWaypoint [getmarkerpos "wp1_1", 0];
	_wp1 setWaypointType "MOVE"; 
	_wp1 setWaypointSpeed "NORMAL";

_crew2 = creategroup WEST;
_landframe2 = [getMarkerPos "ins_2", 7,"rhsusf_m1a2sep1tuskiid_usarmy", _crew2] call BIS_fnc_spawnVehicle;

_wp1 = _crew2 addWaypoint [getmarkerpos "wp1_2", 0];
	_wp1 setWaypointType "MOVE"; 
	_wp1 setWaypointSpeed "NORMAL";

_crew3 = creategroup WEST;
_landframe3 = [getMarkerPos "ins_1", 7,"RHS_M2A3_BUSKIII", _crew3] call BIS_fnc_spawnVehicle;

_wp1 = _crew3 addWaypoint [getmarkerpos "wp1_3", 0];
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