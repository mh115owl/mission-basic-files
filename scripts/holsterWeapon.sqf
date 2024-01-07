params ["_player"];

_player action ["SWITCHWEAPON", _player, _player, -1];
waitUntil {currentWeapon _player == "" or {primaryWeapon _player == "" && handgunWeapon player == ""}};