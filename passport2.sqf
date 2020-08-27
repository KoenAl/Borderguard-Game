removepapers = true;
passportcheck = passportcheck - 1;
teamleader sideChat format["%1 passport checks left", passportcheck];
if (passportcheckvalid) then {
sleep 2;
guard1 removeaction papers1;

teamleader sidechat "Investingating Papers... (25% chance papers are false if person is infected / wanted) (no false positives)";
 // out of 5



};
IF (innitpassport2 == 0) then {
innitpassport2 = 1;

min = 1;
max = 3;
_randomnumbah1 = floor(random max + min);
if (_randomnumbah1 == 1) then {goodvillage = normalvillage1 };
if (_randomnumbah1 == 2) then {goodvillage = normalvillage2 };
if (_randomnumbah1 == 3) then {goodvillage = normalvillage3 };


min = 1;
max = 3;
//infected village
_randomnumbah1 = floor(random max + min);
if (_randomnumbah1 == 1) then {infectedvillage = infectedvillage1 };
if (_randomnumbah1 == 2) then {infectedvillage = infectedvillage2 };
if (_randomnumbah1 == 3) then {infectedvillage = infectedvillage3 };



};
opforsidecheck = true;
civsidecheck = true;
bluforsidecheck = true;

sleep 1;


min = 1;
max = 100;
detectionchance = floor(random max + min);
if (opforsideconfirmed && detectionchance <= 75) then {

teamleader sideChat format["Passport says he's from the village %1", infectedvillage];
};
if (opforsideconfirmed && detectionchance >= 75) then {

teamleader sideChat format["Passport says he's from the village %1", goodvillage];



};

if (civsideconfirmed) then {

teamleader sideChat format["Passport says he's from the village %1", goodvillage];

};

//Blufor
min = 1;
max = 100;
detectionchance = floor(random max + min);
if (bluforsideconfirmed && detectionchance <= 75) then {

teamleader sideChat format["Passport this guy is a wanted criminal from the village %1", infectedvillage];
};
if (bluforsideconfirmed && detectionchance >= 75) then {

teamleader sideChat format["Passport says he's from the village %1", goodvillage];



};

if (bluforsideconfirmed && disabledpassport) then {
teamleader sideChat format["Passport says he's from the village %1", goodvillage];

};


civsideconfirmed = false;
opforsideconfirmed = false;
bluforsideconfirmed = false;
opforsidecheck = false;
civsidecheck = false;
bluforcheck = false;

};


