//nul = execVM "GroupSpawner1.sqf";

//_crew1 = [];

//_airframe1 = [];

//_crew1 = creategroup WEST;
//_airframe1 = [getMarkerPos "marker", bearing, "vehicle classname", _crew1] call BIS_fnc_spawnVehicle;
_team9 = [];
_team10 = [];
_team11 = [];
_team12 = [];

if (isServer) then {
_team9 = [getmarkerpos "ins_9", east, ["rhs_vdv_flora_sergeant","rhs_vdv_flora_junior_sergeant","rhs_vdv_flora_grenadier","rhs_vdv_flora_rifleman","rhs_vdv_flora_machinegunner","rhs_vdv_flora_at","rhs_vdv_flora_strelok_rpg_assist","rhs_vdv_flora_medic"],[],[],[],[],[],0] call BIS_fnc_spawnGroup;

_wp1 = _team9 addWaypoint [getmarkerpos "wp1_9", 0];
    _wp1 setWaypointType "MOVE"; 
    _wp1 setWaypointSpeed "FULL";
    _wp1 setWaypointBehaviour "SAFE";
    _wp1 setWaypointFormation "WEDGE";


_team10 = [getmarkerpos "ins_10", east, ["rhs_vdv_flora_sergeant","rhs_vdv_flora_junior_sergeant","rhs_vdv_flora_grenadier","rhs_vdv_flora_rifleman","rhs_vdv_flora_machinegunner","rhs_vdv_flora_at","rhs_vdv_flora_strelok_rpg_assist","rhs_vdv_flora_medic"],[],[],[],[],[],0] call BIS_fnc_spawnGroup;

_wp1 = _team10 addWaypoint [getmarkerpos "wp1_10", 0];
    _wp1 setWaypointType "MOVE"; 
    _wp1 setWaypointSpeed "FULL";
    _wp1 setWaypointBehaviour "SAFE";
    _wp1 setWaypointFormation "COLUMN";


_team11 = [getmarkerpos "ins_11", independent, ["I_L_Looter_Rifle_F",
"I_L_Criminal_SG_F",
"I_L_Looter_SMG_F",
"I_L_Hunter_F",
"I_L_Looter_SG_F"],[],[],[],[],[],0] call BIS_fnc_spawnGroup;

_wp1 = _team11 addWaypoint [getmarkerpos "wp1_11", 0];
    _wp1 setWaypointType "MOVE"; 
    _wp1 setWaypointSpeed "FULL";
    _wp1 setWaypointBehaviour "SAFE";
    _wp1 setWaypointFormation "DIAMOND";


_team12 = [getmarkerpos "ins_12", independent, ["I_L_Looter_Rifle_F",
"I_L_Criminal_SG_F",
"I_L_Looter_SMG_F",
"I_L_Hunter_F",
"I_L_Looter_SG_F"],[],[],[],[],[],0] call BIS_fnc_spawnGroup;

_wp1 = _team12 addWaypoint [getmarkerpos "wp1_12", 0];
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