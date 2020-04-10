_crew3 = [];
_crew5 = [];
_landframe1 = [];
_landframe3 = [];

if (isServer) then {

_crew3 = creategroup EAST;
_landframe1 = [getMarkerPos "vins_1", 7, "rhs_t90saa_tv", _crew3] call BIS_fnc_spawnVehicle;

_wp1 = _crew3 addWaypoint [getmarkerpos "vwp1_1", 0];
	_wp1 setWaypointType "MOVE"; 
	_wp1 setWaypointSpeed "NORMAL";
	_wp1 setwaypointstatements ["this land 'land'"];

_wp2 = _crew3 addWaypoint [getmarkerpos "vwp1_1a", 0];
	_wp2 setWaypointType "MOVE"; 
	_wp2 setWaypointSpeed "NORMAL"; 

_wp3 = _crew3 addWaypoint [getmarkerpos "vwp1_1b", 0];
	_wp3 setWaypointType "SAD"; 
	_wp3 setWaypointSpeed "NORMAL";
	_wp3 setWaypointBehaviour "COMBAT"; 

_crew5 = creategroup EAST;
_landframe3 = [getMarkerPos "vins_3", 7, "rhs_t90saa_tv", _crew3] call BIS_fnc_spawnVehicle;

_wp1 = _crew5 addWaypoint [getmarkerpos "vwp1_3", 0];
	_wp1 setWaypointType "MOVE"; 
	_wp1 setWaypointSpeed "NORMAL";
	_wp1 setwaypointstatements ["this land 'land'"];

_wp2 = _crew5 addWaypoint [getmarkerpos "vwp1_3a", 0];
	_wp2 setWaypointType "MOVE"; 
	_wp2 setWaypointSpeed "NORMAL"; 

_wp3 = _crew5 addWaypoint [getmarkerpos "vwp1_3b", 0];
	_wp3 setWaypointType "SAD"; 
	_wp3 setWaypointSpeed "NORMAL";
	_wp3 setWaypointBehaviour "COMBAT"; 

};