{if ((typeOf _x == 'B_Survivor_F') && (!isPlayer _x)) then {deleteVehicle _x}} forEach allUnits;
sleep 2;
_group1=createGroup west;
'B_Survivor_F' createUnit [getPosATL PatientSpawn, _group1,'pat1=this; dostop pat1'];
pat1 setVariable ["lambs_danger_disableAI", true];
[pat1, selectRandom[0,0.3,0.5,0.7,0.9], "leg_r", selectrandom ["backblast", "bite", "bullet", "explosive", "falling", "grenade", "punch", "ropeburn", "shell", "stab", "unknown", "vehiclecrash"]] call ace_medical_fnc_addDamageToUnit;
[pat1, selectRandom[0,0.3,0.5,0.7,0.9], "leg_l", selectrandom ["backblast", "bite", "bullet", "explosive", "falling", "grenade", "punch", "ropeburn", "shell", "stab", "unknown", "vehiclecrash"]] call ace_medical_fnc_addDamageToUnit;
[pat1, selectRandom[0,0.3,0.5,0.7,0.9], "body", selectrandom ["backblast", "bite", "bullet", "explosive", "falling", "grenade", "punch", "ropeburn", "shell", "stab", "unknown", "vehiclecrash"]] call ace_medical_fnc_addDamageToUnit;
[pat1, selectRandom[0,0.3,0.5,0.7,0.9], "head", selectrandom ["backblast", "bite", "bullet", "explosive", "falling", "grenade", "punch", "ropeburn", "shell", "stab", "unknown", "vehiclecrash"]] call ace_medical_fnc_addDamageToUnit;
[pat1, selectRandom[0,0.3,0.5,0.7,0.9], "hand_r", selectrandom ["backblast", "bite", "bullet", "explosive", "falling", "grenade", "punch", "ropeburn", "shell", "stab", "unknown", "vehiclecrash"]] call ace_medical_fnc_addDamageToUnit;
[pat1, selectRandom[0,0.3,0.5,0.7,0.9], "hand_l", selectrandom ["backblast", "bite", "bullet", "explosive", "falling", "grenade", "punch", "ropeburn", "shell", "stab", "unknown", "vehiclecrash"]] call ace_medical_fnc_addDamageToUnit;
pat1 setVariable ["acex_headless_blacklist", true, true];
pat1 setVariable ["ace_medical_ai_lastFired", 9999999];
sleep 1;
systemchat "The patient has arrived!";