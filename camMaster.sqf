[heliscene, gotoheli, 8] execVM "goto.sqf";
[cam_1,cam_2,heliscene,35,cam_3,heliscene,30,cam_4,heliscene,30,cam_5,heliscene,30,cam_6,heliscene,25,cam_7,heliscene,25,heliscene,heliscene,15] execVM "CamControl.sqf";
sleep 4;
titleText ["Kevo presents", "PLAIN"];
sleep 9;
titleText ["an ArmA III production", "PLAIN"];
sleep 8;
titleText ["for his friends.", "PLAIN"];
sleep 20;
titleText ["Location: Cyprus", "PLAIN"];
sleep 5;
titleText ["Year: 2021", "PLAIN"];
sleep 6;
titleText ["", "PLAIN"];
sleep 1.3;
_shot = [heliscene, gotoheli, helitarg1, 40, 1, 0.1, false,0,0,-5] execVM "camera_work.sqf";
[heliscene, gotoheli, 3] execVM "goto.sqf";
sleep 3.5;
playSound "voicesample";