player enableFatigue false;   
player addEventHandler ["Respawn", {player enableFatigue false}];

player setCustomAimCoef 0.0;
player addEventHandler ["Respawn", {player setCustomAimCoef 0.0}];


radioJammer = [[jammer1, jammer2, jammer3], 2100, 50, FALSE] execVM "Scripts\TFARjamRadios.sqf";