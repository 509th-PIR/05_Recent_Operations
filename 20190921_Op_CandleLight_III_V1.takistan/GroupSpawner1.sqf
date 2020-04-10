_team1 = [];
_team2 = [];
_team3 = [];


if (isServer) then {
_team1 = [ getMarkerPos "GS_1", east, ["isc_is_squad_leader_o","isc_is_machinegunner_o","isc_is_rifleman_o","isc_is_sniper_o","isc_is_rifleman_o"],[],[],[],[],[6],180] call BIS_fnc_spawnGroup;


_wp1 = _team1 addWaypoint [getMarkerPos "WP_1", 0];
	_wp1 setWaypointType "MOVE";
	_wp1 setWaypointSpeed "NORMAL";
	_wp1 setWaypointFormation "FILE";
	_wp1 setWaypointBehaviour "AWARE";

_team2 = [ getMarkerPos "GS_2", east, ["isc_is_squad_leader_o","isc_is_machinegunner_o","isc_is_rifleman_o","isc_is_sniper_o","isc_is_rifleman_o"],[],[],[],[],[6],045] call BIS_fnc_spawnGroup;


_wp1 = _team2 addWaypoint [getMarkerPos "WP_2", 0];
	_wp1 setWaypointType "MOVE";
	_wp1 setWaypointSpeed "NORMAL";
	_wp1 setWaypointFormation "FILE";
	_wp1 setWaypointBehaviour "AWARE";


_team3 = [ getMarkerPos "GS_3", east, ["isc_is_squad_leader_o","isc_is_machinegunner_o","isc_is_rifleman_o","isc_is_sniper_o","isc_is_rifleman_o"],[],[],[],[],[6],065] call BIS_fnc_spawnGroup;


_wp1 = _team3 addWaypoint [getMarkerPos "WP_3", 0];
	_wp1 setWaypointType "MOVE";
	_wp1 setWaypointSpeed "NORMAL";
	_wp1 setWaypointFormation "FILE";
	_wp1 setWaypointBehaviour "AWARE";


	};