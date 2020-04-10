/*
	---- CCRC Helocast Script ----


	Author: Donovan Cunningham

	Usage:
		This script should be put in the init of the vehicle desired.
		This script can also be added to a bird after mission start 
		with the help of the debug console 

	Params:
		None

	Returns:
		Nothing

	Notes:
		Bug: Pilot will not lose add action
*/

//event handler to save all the frames
["ace_cargoLoaded", {
	params["_item", "_bird"];
	if (typeOf _item == "B_Boat_Transport_01_F" && (_bird isKindOf "RHS_CH_47F" || _bird isKindOf "RHS_UH60M")) then {
		[_bird, _item] call makeBoatPushable;
	};
}] call CBA_fnc_addEventHandler;

["ace_cargoUnloaded", {
	params["_item", "_bird"];
	if (typeOf _item == "B_Boat_Transport_01_F" && (_bird isKindOf "RHS_CH_47F" || _bird isKindOf "RHS_UH60M")) then {
		removeAllActions _bird;
		if (_bird isKindOf "RHS_UH60M") then {
			{deleteVehicle _x} forEach attachedObjects _bird;
		};
	};
}] call CBA_fnc_addEventHandler;

["ace_cargoRemoved", {
	params["_item", "_bird"];
	if (_item == "B_Boat_Transport_01_F" && (_bird isKindOf "RHS_CH_47F" || _bird isKindOf "RHS_UH60M")) then {
		removeAllActions _bird;
		if (_bird isKindOf "RHS_UH60M") then {
			{deleteVehicle _x} forEach attachedObjects _bird;
		};
	};
}] call CBA_fnc_addEventHandler;

//adds actions to the bird
makeBoatPushable = {
	params["_bird", "_item"];
	private["_isRemoved"];

	//CH-47
	if (_bird isKindOf "RHS_CH_47F") then {
		_bird addAction ["<t color='#001aff'>Push Out Boat</t>",
			{
				params ["_target", "_caller", "_actionId", "_arguments"];
				_isRemoved = false;
				if (_caller == fullCrew [_target, '', true] # 24 # 0) then {
					_boaty = createVehicle  ["B_Boat_Transport_01_F", [(_target getRelPos [10, 180]) # 0, (_target getRelPos [10, 180]) # 1, (getPos _target) # 2 + 1], [], -1, "CAN_COLLIDE"];
					_boaty setVariable ["ace_cargo_canLoad", 1];
					[_boaty, 8] call  ace_cargo_fnc_setSize;
					_boaty setDir direction _target;
					_boaty setVelocity [velocity _target # 0 - 5, velocity _target # 1, velocity _target # 2];
					[_arguments # 0, _target] call ace_cargo_fnc_removeCargoItem;
				};
			},
			[_item],     
			6.2,     
			false, 
			true, 
			"", 
			"!isNull (fullCrew [_target, '', true] # 24 # 0)",  
			-1, 
			false,   
			"", 
			"" 
		];
	};

	//UH-60 (RHS)
	if (_bird isKindOf "RHS_UH60M") then {
		_underBoat = createSimpleObject ["B_Boat_Transport_01_F", [0, 0, 0], false];
		_underBoat attachTo [_bird, [0, 1.5, -1.35] ];
		_action = _bird addAction ["<t color='#001aff'>Drop Boat</t>",
			{
				params ["_target", "_caller", "_actionId", "_arguments"];
				if (_caller == fullCrew [_target, '', true] # 10 # 0) then {
					_boaty = createVehicle  ['B_Boat_Transport_01_F', [(getPos _target ) # 0, (getPos _target) # 1, (getPos _target) # 2 + 0.3], [], -1, 'CAN_COLLIDE'];
					_boaty setVariable ['ace_cargo_canLoad', 1];
					[_boaty, 8] call  ace_cargo_fnc_setSize;
					_boaty setDir direction _target;
					_boaty setVelocity [velocity _target # 0, velocity _target # 1, velocity _target # 2 - 5];
					[_arguments # 1, _target] call ace_cargo_fnc_removeCargoItem;
				};
			},
			[_underBoat, _item],     
			6.2,     
			false, 
			true, 
			"", 
			"!isNull (fullCrew [_target, '', true] # 10 # 0)",  
			-1, 
			false,   
			"", 
			"" 
		];
	};

	//UH-60 (YAX)
	if (_bird isKindOf "") then {
		_underBoat = createSimpleObject ["B_Boat_Transport_01_F", [0, 0, 0], false];
		_underBoat attachTo [_bird, [0, 1.5, -1.35] ];
		_bird addAction ["<t color='#001aff'>Drop Boat</t>",
			{
				params ["_target", "_caller", "_actionId", "_arguments"];
				if (_caller == fullCrew [_target, '', true] # 12 # 0) then {
					deleteVehicle (_arguments # 0);
					_boaty = createVehicle  ["B_Boat_Transport_01_F", [(getPos _target ) # 0, (getPos _target) # 1, (getPos _target) # 2 + 0.3], [], -1, "CAN_COLLIDE"];
					_boaty setVariable ["ace_cargo_canLoad", 1];
					[_boaty, 8] call  ace_cargo_fnc_setSize;
					_boaty setDir direction _target;
					_boaty setVelocity [velocity _target # 0, velocity _target # 1, velocity _target # 2 - 5];
					[_arguments # 1, _target] call ace_cargo_fnc_removeCargoItem;
				};
			},
			[_underBoat, _item],     
			6.2,     
			false, 
			true, 
			"", 
			"!isNull (fullCrew [_target, '', true] # 12 # 0)",  
			-1, 
			false,   
			"", 
			"" 
		];
	};
};