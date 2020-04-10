//nul = execVM "Scripts\GroupSpawner1.sqf";

//_crew1 = [];

//_airframe1 = [];

//_crew1 = creategroup WEST;
//_airframe1 = [getMarkerPos "marker", bearing, "vehicle classname", _crew1] call BIS_fnc_spawnVehicle;
_crew1 = [];
_airframe1 = [];
_team7 = [];



if (isServer) then {

_crew1 = creategroup EAST;
_airframe1 = [getMarkerPos "ins_7", 270, "RHS_Mi8MTV3_vdv", _crew1] call BIS_fnc_spawnVehicle;

_wp1 = _crew1 addWaypoint [getmarkerpos "wp1_7", 0];
	_wp1 setWaypointType "TR UNLOAD"; 
	_wp1 setWaypointSpeed "FULL";
	_wp1 setwaypointstatements ["this land 'land'"];

_wp2 = _crew1 addWaypoint [getmarkerpos "wp1_7a", 0];
	_wp2 setWaypointType "MOVE"; 
	_wp2 setWaypointSpeed "NORMAL"; 

_wp3 = _crew1 addWaypoint [getmarkerpos "wp1_7b", 0];
	_wp3 setWaypointType "SAD"; 
	_wp3 setWaypointSpeed "NORMAL";
	_wp3 setWaypointBehaviour "COMBAT";


_team7 = [getmarkerpos "ins_7", east, ["rhs_vdv_flora_sergeant","rhs_vdv_flora_junior_sergeant","rhs_vdv_flora_grenadier","rhs_vdv_flora_rifleman","rhs_vdv_flora_machinegunner","rhs_vdv_flora_at","rhs_vdv_flora_strelok_rpg_assist","rhs_vdv_flora_medic"],[],[],[],[],[],0] call BIS_fnc_spawnGroup;

_wp1a = _team7 addWaypoint [getmarkerpos "wp1a", 0];

sleep .5;

{_x assignAsCargo (_airframe1 select 0); _x moveInCargo (_airframe1 select 0);} foreach units _team7;

};

//_wp1 = _crew1 addWaypoint [getmarkerpos "wp1_1", 0];
//	_wp1 setWaypointType "TR UNLOAD"; 
//	_wp1 setWaypointSpeed "FULL";
//	_wp1 setwaypointstatements ["this land 'land'"];

//_mygroup = [getmarkerpos "EXAMPLE VARIABLE NAME", Side, ["Class_Name"],[],[],[],[],[],Spawn bearing] call BIS_fnc_spawnGroup;
//_wp1a = _mygroup addWaypoint [getmarkerpos "wp1_1", 0];

//sleep x;

//{_x assignAsCargo (_airframe1 select 0); _x moveInCargo (airframe1 select 0);} foreach units _mygroup;
// add }; at the end