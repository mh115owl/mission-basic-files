private ["_veh","_vehType"];
_veh = _this select 0;
_vehType = getText(configFile>>"CfgVehicles">>typeOf _veh>>"DisplayName");

if ((_veh isKindOf "plane")) exitWith { 

	_veh sidechat format ["%1 kiszolgálása folyamatban...", _vehType];
	_veh setFuel 0;
	sleep 10;
	
	_veh setVehicleAmmo 1;	
	_veh sidechat format ["%1 fegyverzet feltöltve.", _vehType];
	sleep 10;
	
	_veh setDamage 0;	
	_veh sidechat format ["%1 javítás kész.", _vehType];	
	sleep 10;
	
	_veh setFuel 1;
	_veh sidechat format ["%1 üzemanyag feltöltve.", _vehType];
	sleep 2;
	

	_veh sidechat format ["A %1 drone harckész!", _vehType];

};
