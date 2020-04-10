
_plane1 = [];
_plane2 = [];
_plane3 = [];
_plane4 = [];
_plane5 = [];
_plane6 = [];
_plane7 = [];
_pilot1 = [];
_pilot2 = [];


if (isServer) then {

_pilot1 = creategroup EAST;
_plane1 = [getMarkerPos "ains_1", 270, "rhs_mig29sm_vvs", _pilot1] call BIS_fnc_spawnVehicle;
_plane2 = [getMarkerPos "ains_2", 270, "rhs_mig29sm_vvs", _pilot1] call BIS_fnc_spawnVehicle;
_plane3 = [getMarkerPos "ains_3", 270, "rhs_mig29sm_vvs", _pilot1] call BIS_fnc_spawnVehicle;
_plane4 = [getMarkerPos "ains_4", 270, "rhs_mig29sm_vvs", _pilot1] call BIS_fnc_spawnVehicle;



_wp1 = _pilot1 addWaypoint [getmarkerpos "awp_1", 0];
	_wp1 setWaypointType "SAD"; 
	_wp1 setWaypointSpeed "FULL";
	_wp1 setWaypointBehaviour "COMBAT";


_pilot2 = creategroup WEST;
_plane5 = [getMarkerPos "ains_5", 270, "rhsusf_f22", _pilot2] call BIS_fnc_spawnVehicle;
_plane6 = [getMarkerPos "ains_6", 270, "rhsusf_f22", _pilot2] call BIS_fnc_spawnVehicle;
_plane7 = [getMarkerPos "ains_7", 270, "rhsusf_f22", _pilot2] call BIS_fnc_spawnVehicle;



_wp1 = _pilot2 addWaypoint [getmarkerpos "awp_2", 0];
	_wp1 setWaypointType "SAD"; 
	_wp1 setWaypointSpeed "FULL";
	_wp1 setWaypointBehaviour "COMBAT";


};