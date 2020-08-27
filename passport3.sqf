passport3 = false;
paperx = true;
guard1 removeaction papers2;
teamleader sideChat "10% chance of detecting an anomaly if infected or wanted";
sleep 1;
_min = 1;
_max = 3;

_randomnumbah1 = floor(random _max + _min);
if (_randomnumbah1 == 1) then {pronoun = 'Sir' };
if (_randomnumbah1 == 2) then {pronoun = 'Good Gentleman' };
if (_randomnumbah1 == 3) then {pronoun = 'Citizen' };
guard1 globalChat format["Where are you from %1 ?", pronoun];
guard1 say3d "talk2";

sleep 1;


IF (innitpassport2 == 0) then {

//infected village
_min = 1;
_max = 3;
_randomnumbah1 = floor(random _max + _min);
if (_randomnumbah1 == 1) then {infectedvillage = infectedvillage1 };
if (_randomnumbah1 == 2) then {infectedvillage = infectedvillage2 };
if (_randomnumbah1 == 3) then {infectedvillage = infectedvillage3 };
innitpassport2 = 1;

//init good village
_randomnumbah1 = floor(random _max + _min);
if (_randomnumbah1 == 1) then {goodvillage = normalvillage1 };
if (_randomnumbah1 == 2) then {goodvillage = normalvillage2 };
if (_randomnumbah1 == 3) then {goodvillage = normalvillage3 };
};

//broken
opforsidecheck = true;
civsidecheck = true;
bluforsidecheck = true;
removepapers2 = true;
sleep 1;



//***************************** */
//vvv mainstart civside if


if (civsideconfirmed) then {
local _min = 1;
local _max = 3;
local _randomconvociv = floor(random _max + _min);

Sleep 1;
if (_randomconvociv == 1) then {guard1 say3d "talk1";coach globalchat format["Ehh.. i'm from %1", goodvillage]; civsideconfirmed = false; opforsideconfirmed = false; bluforsideconfirmed = false; opforsidecheck = false; civsidecheck = false; bluforcheck = false; paperx = false; terminate papers3;;};
if (_randomconvociv == 2) then {guard1 say3d "talk1";coach globalchat format["Is there a problem here officer? i'm from %1", goodvillage];civsideconfirmed = false; opforsideconfirmed = false; bluforsideconfirmed = false; opforsidecheck = false; civsidecheck = false; bluforcheck = false; paperx = false; terminate papers3;;};
if (_randomconvociv == 3) then {guard1 say3d "talk1";coach globalchat format["Hi officer i'm from %1", goodvillage];civsideconfirmed = false; opforsideconfirmed = false; bluforsideconfirmed = false; opforsidecheck = false; civsidecheck = false; bluforcheck = false; paperx = false; terminate papers3;;}; };// <closing bracket if



_min = 0;
_max = 100;
detectionchance = floor(random _max + _min);
if (opforsideconfirmed && detectionchance >= 90) then {
_min = 1;
_max = 3;
_randomconvoopfor = floor(random _max + _min);
guard1 say3d "talk1";
Sleep 0.5;
if (_randomconvoopfor == 1) then {coach globalchat format["Ehh.. i'm from %1", infectedvillage];civsideconfirmed = false; opforsideconfirmed = false; bluforsideconfirmed = false; opforsidecheck = false; civsidecheck = false; bluforcheck = false; paperx = false; terminate papers3; };
if (_randomconvoopfor == 2) then {coach globalchat format["Is there a problem here officer? i dont want to give out such information"];civsideconfirmed = false; opforsideconfirmed = false; bluforsideconfirmed = false; opforsidecheck = false; civsidecheck = false; bluforcheck = false; paperx = false; terminate papers3;};
if (_randomconvoopfor == 3) then {coach globalchat format["Police abuse! I have a right to my privacy!"];civsideconfirmed = false; opforsideconfirmed = false; bluforsideconfirmed = false; opforsidecheck = false; civsidecheck = false; bluforcheck = false; paperx = false; terminate papers3;};
};

if (opforsideconfirmed && detectionchance <= 90) then {
_min = 1;
_max = 3;
_randomconvoopfor1 = floor(random _max + _min);
guard1 say3d "talk1";
Sleep 0.5;
if (_randomconvoopfor1 == 1) then {coach globalchat format["Ehh.. i'm from %1", goodvillage]; civsideconfirmed = false; opforsideconfirmed = false; bluforsideconfirmed = false; opforsidecheck = false; civsidecheck = false; bluforcheck = false; paperx = false; terminate papers3;};
if (_randomconvoopfor1 == 2) then {coach globalchat format["Is there a problem here officer? i'm from %1", goodvillage];civsideconfirmed = false; opforsideconfirmed = false; bluforsideconfirmed = false; opforsidecheck = false; civsidecheck = false; bluforcheck = false; paperx = false; terminate papers3;};
if (_randomconvoopfor1 == 3) then {coach globalchat format["Hi officer i'm from %1", goodvillage];civsideconfirmed = false; opforsideconfirmed = false; bluforsideconfirmed = false; opforsidecheck = false; civsidecheck = false; bluforcheck = false; paperx = false; terminate papers3;};
};
 // < close opforside


bluforsideconfirmed = true;
_min = 0;
_max = 100;
detectionchance = floor(random _max + _min);
sleep 0.3;
if (bluforsideconfirmed && detectionchance >= 90 && !disabledpassport) then {
//detected
_min = 1;
_max = 3;
_randomconvoblu1 = floor(random _max + _min);
guard1 say3d "talk1";
Sleep 0.5;
if (_randomconvoblu1 == 1) then {coach globalchat format["Ehh.. i'm from %1", infectedvillage]; civsideconfirmed = false; opforsideconfirmed = false; bluforsideconfirmed = false; opforsidecheck = false; civsidecheck = false; bluforcheck = false; paperx = false; terminate papers3;};
if (_randomconvoblu1 == 2) then {coach globalchat format["Is there a problem here officer? i dont want to give out such information"];civsideconfirmed = false; opforsideconfirmed = false; bluforsideconfirmed = false; opforsidecheck = false; civsidecheck = false; bluforcheck = false; paperx = false; terminate papers3;};
if (_randomconvoblu1 == 3) then {coach globalchat format["Police abuse! I have a right to my privacy!"];civsideconfirmed = false; opforsideconfirmed = false; bluforsideconfirmed = false; opforsidecheck = false; civsidecheck = false; bluforcheck = false; paperx = false; terminate papers3;};

};
if (bluforsideconfirmed && detectionchance <= 65) then {
_min = 1;
_max = 3;
_randomconvoblu2 = floor(random _max + _min);
guard1 say3d "talk1";
Sleep 0.5;
if (_randomconvoblu2 == 1) then {coach globalchat format["Ehh.. i'm from %1", goodvillage];civsideconfirmed = false; opforsideconfirmed = false; bluforsideconfirmed = false; opforsidecheck = false; civsidecheck = false; bluforcheck = false; paperx = false; terminate papers3; };
if (_randomconvoblu2 == 2) then {coach globalchat format["Is there a problem here officer? i'm from %1", goodvillage];civsideconfirmed = false; opforsideconfirmed = false; bluforsideconfirmed = false; opforsidecheck = false; civsidecheck = false; bluforcheck = false; paperx = false; terminate papers3;};
if (_randomconvoblu2 == 3) then {coach globalchat format["Hi officer i'm from %1", goodvillage];civsideconfirmed = false; opforsideconfirmed = false; bluforsideconfirmed = false; opforsidecheck = false; civsidecheck = false; bluforcheck = false; paperx = false; terminate papers3;};

};
if (bluforsideconfirmed && disabledpassport) then {
	guard1 say3d "talk1";
	Sleep 0.5;
coach globalchat format["Is there a problem here officer? i'm from %1", goodvillage];
civsideconfirmed = false; opforsideconfirmed = false; bluforsideconfirmed = false; opforsidecheck = false; civsidecheck = false; bluforcheck = false; paperx = false; terminate papers3;

};







