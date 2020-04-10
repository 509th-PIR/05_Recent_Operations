//nul = execVM "GroupSpawner1.sqf";

//_crew1 = [];

//_airframe1 = [];

//_crew1 = creategroup WEST;
//_airframe1 = [getMarkerPos "marker", bearing, "vehicle classname", _crew1] call BIS_fnc_spawnVehicle;
_team4 = [];
_team5 = [];
_team6 = [];


if (isServer) then {
_team4 = [getmarkerpos "ins_4", east, ["rhs_vdv_recon_sergeant","rhs_vdv_recon_efreitor","rhs_vdv_recon_arifleman","rhs_vdv_recon_machinegunner_assistant","rhs_vdv_recon_rifleman_lat","rhs_vdv_recon_grenadier"],[],[],[],[],[],0] call BIS_fnc_spawnGroup;

_wp1 = _team4 addWaypoint [getmarkerpos "wp1_4", 0];
    _wp1 setWaypointType "MOVE"; 
    _wp1 setWaypointSpeed "FULL";
    _wp1 setWaypointBehaviour "SAFE";
    _wp1 setWaypointFormation "DIAMOND";


_team5 = [getmarkerpos "ins_5", east, ["rhs_vdv_recon_sergeant","rhs_vdv_recon_efreitor","rhs_vdv_recon_arifleman","rhs_vdv_recon_machinegunner_assistant","rhs_vdv_recon_rifleman_lat","rhs_vdv_recon_grenadier"],[],[],[],[],[],0] call BIS_fnc_spawnGroup;

_wp1 = _team5 addWaypoint [getmarkerpos "wp1_5", 0];
    _wp1 setWaypointType "MOVE"; 
    _wp1 setWaypointSpeed "FULL";
    _wp1 setWaypointBehaviour "SAFE";
    _wp1 setWaypointFormation "DIAMOND";


_team6 = [getmarkerpos "ins_6", east, ["rhs_vdv_recon_sergeant","rhs_vdv_recon_efreitor","rhs_vdv_recon_arifleman","rhs_vdv_recon_machinegunner_assistant","rhs_vdv_recon_rifleman_lat","rhs_vdv_recon_grenadier"],[],[],[],[],[],0] call BIS_fnc_spawnGroup;

_wp1 = _team6 addWaypoint [getmarkerpos "wp1_6", 0];
    _wp1 setWaypointType "MOVE"; 
    _wp1 setWaypointSpeed "FULL";
    _wp1 setWaypointBehaviour "SAFE";
    _wp1 setWaypointFormation "DIAMOND";
	
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