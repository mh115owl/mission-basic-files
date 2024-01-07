//#include "script_component.hpp"
/*
Author: Ampersand
Add actions to aircraft for Plan AI Flight and Set Ramp for Jump

* Arguments:
* 0: Unit <OBJECT>
*
* Return Value:
* -

* Example:
* [_aircraft] call ffr_main_fnc_prepAircraft = {
*/

params ["_aircraft"];

private _isHeli = _aircraft isKindOf "Helicopter";
if (!_isHeli) then {
    _aircraft addAction ["Repülési terv készítése", {
        call ffr_main_fnc_planFlight;
    }, nil, 0, true, true, "", "ffr_altitude_menu && {!isNull driver _target} && { !isPlayer driver _target } && { _this in _target } && {_this == leader _this}"];

    _aircraft addAction ["Repülés megkezdése", {
        params ["_aircraft"];
        ffr_aiFlightReady = false;
        ["ffr_main_aiFlight", [_aircraft, ffr_ai_alt, ffr_ai_rp, ffr_ai_ip], _aircraft] call CBA_fnc_targetEvent;
    }, nil, 0, true, true, "", "ffr_aiFlightReady"];
};

_aircraft addAction ["Rámpa előkészítése ugráshoz", {
    params ["_aircraft"];
    ["ffr_main_prepRamp", [_aircraft]] call CBA_fnc_serverEvent;
}, nil, 0, false, true, "", "isNull (_target getVariable ['ffr_dummy', objNull]) && {(getPos _target # 2) > 200 && {_this == driver _target || {!isNull driver _target && {!isPlayer driver _target} && {_this == leader _this}}}}"];

_aircraft addAction ["Állj fel", {
    call ffr_main_fnc_standUp;
}, nil, 0, true, true, "", "!isNull (_target getVariable ['ffr_dummy', objNull]) && {_this in _target} && {_this != driver _target}"];

_aircraft addAction ["<t color='#FF0000'>Vörös jelzés</t>", {
    params ["_aircraft"];
    ["ffr_main_setJumplight", [_aircraft, "red"]] call CBA_fnc_globalEvent;
}, nil, 0, false, false, "", "!isNull (_target getVariable ['ffr_jumplight', objNull]) && {!isNull (_target getVariable ['ffr_jumplight_dummy', objNull]) && {_this == leader _this || {_this in group driver _target}}}"];

_aircraft addAction ["<t color='#00FF00'>Zöld jelzés</t>", {
    params ["_aircraft"];
    ["ffr_main_setJumplight", [_aircraft, "green"]] call CBA_fnc_globalEvent;
}, nil, 0, false, false, "", "!isNull (_target getVariable ['ffr_jumplight', objNull]) && {!isNull (_target getVariable ['ffr_jumplight_dummy', objNull]) && {_this == leader _this || {_this in group driver _target}}}"];

_aircraft addAction ["<t color='#999999'>Jelzés kikapcsolása</t>", {
    params ["_aircraft"];
    ["ffr_main_setJumplight", [_aircraft, "off"]] call CBA_fnc_globalEvent;
}, nil, 0, false, false, "", "!isNull (_target getVariable ['ffr_jumplight', objNull]) && {!isNull (_target getVariable ['ffr_jumplight_dummy', objNull]) && {_this == leader _this || {_this in group driver _target}}}"];

_aircraft addAction ["<t color='#999999'>Rámpa visszazárása ugrás törléséhez</t>", {
    params ["_aircraft"];
    [_aircraft] call ffr_main_fnc_cleanUp;
}, nil, 0, false, false, "", "!isNull (_target getVariable ['ffr_dummy', objNull]) && {!isNull (_target getVariable ['ffr_jumplight', objNull])} && {!isNull (_target getVariable ['ffr_jumplight_dummy', objNull]) && {_this == leader _this || {_this in group driver _target}}}"];
