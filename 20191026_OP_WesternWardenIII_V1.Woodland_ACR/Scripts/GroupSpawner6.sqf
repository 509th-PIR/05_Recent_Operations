

_crew4 = [];
_landframe2 = [];

if (isServer) then {

crew4 = creategroup EAST;
_landframe2 = [getMarkerPos "vins_2", 7, "rhs_btr80_vdv", crew4] call BIS_fnc_spawnVehicle;

_wp1 = crew4 addWaypoint [getmarkerpos "vwp1_2", 0];
	_wp1 setWaypointType "MOVE"; 
	_wp1 setWaypointSpeed "NORMAL";
	_wp1 setwaypointstatements ["this land 'land'"];

_wp2 = crew4 addWaypoint [getmarkerpos "vwp1_2a", 0];
	_wp2 setWaypointType "MOVE"; 
	_wp2 setWaypointSpeed "NORMAL"; 

_wp3 = crew4 addWaypoint [getmarkerpos "vwp1_2b", 0];
	_wp3 setWaypointType "SAD"; 
	_wp3 setWaypointSpeed "NORMAL";
	_wp3 setWaypointBehaviour "COMBAT"; 


};