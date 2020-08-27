convoconvo = false;

sleep 1;
removeconvo = true;
_min = 1;
_max = 3;
_randomnumbah1 = floor(random _max + _min);
if (_randomnumbah1 == 1) then {pronoun = 'Civilian' };
if (_randomnumbah1 == 2) then {pronoun = 'Mr' };
if (_randomnumbah1 == 3) then {pronoun = 'Citizen' };
guard1 globalChat format["How are we doing today %1 ?", pronoun];
guard1 say3d "talk2";




//weather
_min = 1;
_max = 5;
_randomnumbah1 = floor(random _max + _min);
if (_randomnumbah1 == 1) then {weather = 'Weather is quite bad isnt?' };
if (_randomnumbah1 == 2) then {weather = 'Isnt it beautiful today?' };
if (_randomnumbah1 == 3) then {weather = 'They say its going to rain soon.' };
if (_randomnumbah1 == 4) then {weather = 'Quite cold.' };
if (_randomnumbah1 == 5) then {weather = 'Its too warm.' };

sleep 1;

//mood
_min = 1;
_max = 5;
_randomnumbah1 = floor(random _max + _min);
if (_randomnumbah1 == 1) then {mood = 'good' };
if (_randomnumbah1 == 2) then {mood = 'all right' };
if (_randomnumbah1 == 3) then {mood = 'decent' };
if (_randomnumbah1 == 4) then {mood = 'shitty' };
if (_randomnumbah1 == 5) then {mood = 'fantastic' };
sleep 1;
guard1 say3d "talk1";
coach globalChat format["Hello officer. I am feeling %1", mood];
sleep 3;
guard1 say3d "talk2";
guard1 globalChat "Interesting weather today";

sleep 1;
guard1 say3d "talk1";
coach globalChat format["%1", weather];
terminate convo;