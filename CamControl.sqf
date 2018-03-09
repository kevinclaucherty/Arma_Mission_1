// by ALIAS
// _camera_shot= [position_1_name, position_2_name, target_name, duration, zoom_level1, zoom_level_2, attached, x_rel_coord, y_rel_coord, z_rel_coord,last_shot] execVM "camera_work.sqf";
// camFly = [start pos 1, end pos 1, target 1, speed1, end pos 2, target 2, speed2, ..., end pos n, target n, speed n.

_totalcount = ((count _this)-1)/3;//number of shots
_counter = 0;
_startpos = _this select 0;
_target = (_this select 2);

while {_counter<_totalcount} do {
_endpos = (_this select ((3*_counter)+1));
_target = (_this select ((3*_counter)+2));
_speed  = (_this select ((3*_counter)+3));

_s = getPos _startpos;
_t = getPos _endpos;
_dist = _s distance _t;
_travelTime = ((_dist/_speed)/(_counter+1));

_shot = [_startpos, _endpos, _target, _travelTime, 1, 1, false,0,0,0] execVM "camera_work.sqf";
sleep (_travelTime-1);

_startpos = _endpos;
_counter = _counter + 1;

}