nul = [] spawn {
Fogoly addVest "rhs_6b13_Flora";
deleteVehicle fogoly_vest;
sleep 5;
Fogoly addHeadgear "rhs_6b47_emr_1";
deleteVehicle fogoly_helmet;
sleep 2;
player sideChat "A kísért személy beöltöztetve, kivonásra kész!";
};
Fogoly removeaction 3;