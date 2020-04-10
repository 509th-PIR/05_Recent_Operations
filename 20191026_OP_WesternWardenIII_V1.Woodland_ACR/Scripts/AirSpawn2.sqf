
_plane9 = [];
_plane10 = [];
_plane11 = [];
_plane12 = [];
_plane13 = [];
_plane14 = [];
_plane15 = [];
_plane16 = [];
_pilot3 = [];
_pilot4 = [];


if (isServer) then {

_pilot3 = creategroup EAST;
_plane9 = [getMarkerPos "ains_1", 270, "rhs_mig29sm_vvs", _pilot3] call BIS_fnc_spawnVehicle;
_plane10 = [getMarkerPos "ains_2", 270, "rhs_mig29sm_vvs", _pilot3] call BIS_fnc_spawnVehicle;
_plane11 = [getMarkerPos "ains_3", 270, "rhs_mig29sm_vvs", _pilot3] call BIS_fnc_spawnVehicle;
_plane12 = [getMarkerPos "ains_4", 270, "rhs_mig29sm_vvs", _pilot3] call BIS_fnc_spawnVehicle;



_wp1 = _pilot3 addWaypoint [getmarkerpos "awp_1", 0];
	_wp1 setWaypointType "SAD"; 
	_wp1 setWaypointSpeed "FULL";
	_wp1 setWaypointBehaviour "COMBAT";


_pilot4 = creategroup WEST;
_plane13 = [getMarkerPos "ains_5", 270, "rhsusf_f22", _pilot4] call BIS_fnc_spawnVehicle;
_plane14 = [getMarkerPos "ains_6", 270, "rhsusf_f22", _pilot4] call BIS_fnc_spawnVehicle;
_plane15 = [getMarkerPos "ains_7", 270, "rhsusf_f22", _pilot4] call BIS_fnc_spawnVehicle;
_plane16 = [getMarkerPos "ains_8", 270, "rhsusf_f22", _pilot4] call BIS_fnc_spawnVehicle;



_wp1 = _pilot4 addWaypoint [getmarkerpos "awp_2", 0];
	_wp1 setWaypointType "SAD"; 
	_wp1 setWaypointSpeed "FULL";
	_wp1 setWaypointBehaviour "COMBAT";


};