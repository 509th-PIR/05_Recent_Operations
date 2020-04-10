_crew2 = [];
_airframe2 = [];
_team8 = [];

if (isServer) then {

_crew2 = creategroup EAST;
_airframe2 = [getMarkerPos "ins_8", 270, "RHS_Mi8MTV3_vdv", _crew2] call BIS_fnc_spawnVehicle;

_wp1 = _crew2 addWaypoint [getmarkerpos "wp1_8", 0];
	_wp1 setWaypointType "TR UNLOAD"; 
	_wp1 setWaypointSpeed "FULL";
	_wp1 setwaypointstatements ["this land 'land'"];

_wp2 = _crew2 addWaypoint [getmarkerpos "wp1_8a", 0];
	_wp2 setWaypointType "MOVE"; 
	_wp2 setWaypointSpeed "NORMAL"; 

_wp3 = _crew2 addWaypoint [getmarkerpos "wp1_8b", 0];
	_wp3 setWaypointType "SAD"; 
	_wp3 setWaypointSpeed "NORMAL";
	_wp3 setWaypointBehaviour "COMBAT"; 

_team8 = [getmarkerpos "ins_8", east, ["rhs_vdv_recon_sergeant","rhs_vdv_recon_efreitor","rhs_vdv_recon_arifleman","rhs_vdv_recon_machinegunner_assistant","rhs_vdv_recon_rifleman_lat","rhs_vdv_recon_grenadier"],[],[],[],[],[],0] call BIS_fnc_spawnGroup;

_wp1b = _team8 addWayPoint [getmarkerpos "wp1b", 0];

sleep .5;

{_x assignAsCargo (_airframe2 select 0); _x moveInCargo (_airframe2 select 0);} foreach units _team8;

};