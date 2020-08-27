
teamleader sideChat format["Fibonnaci Sequence time! - limit set to 5000000"];
sleep 2;
Fibonnaci = true;
t1 = 0;
t2 = 1;

while {Fibonnaci} do {




nextTerm = t1 + t2;
        t1 = t2;
        t2 = nextTerm;
			teamleader sideChat format["%1", nextterm];
	sleep 0.1;
	if (nextterm >5000000) then { teamleader sidechat "thats quite enough";Fibonnaci = false;}


	}; //end main bracket

