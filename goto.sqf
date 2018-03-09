_destination = getPos (_this select 1);
_speed = (_this select 2);

_destinationX = _destination select 0;
_destinationY = _destination select 1;
_destinationZ = _destination select 2;

_mag = 100;

x = 0;
while {_mag > 30} do{
_item = getPos (_this select 0);
_itemX = _item select 0;
_itemY = _item select 1;
_itemZ = _item select 2;

_diffX = _destinationX - _itemX;
_diffY = _destinationY - _itemY;
_diffZ = _destinationZ - _itemZ;

_mag = (_diffX^2 + _diffY^2 + _diffZ^2)^(1/2);
_xcomp = _diffX/_mag;
_ycomp = _diffY/_mag;
_zcomp = _diffZ/_mag;

_speedX = _xcomp*_speed;
_speedY = _ycomp*_speed;
_speedZ = _zcomp*_speed;

_dir = _item getDir _destination;
_currentdir = getDir (_this select 0);

if (_dir > _currentdir + 15) then {
(_this select 0) setDir (_currentdir + 4);
};

if (_dir < _currentdir - 15) then {
(_this select 0) setDir _currentdir - 4;
};

(_this select 0) setVelocity[_speedX,_speedY,_speedZ];
sleep 0.1;
};