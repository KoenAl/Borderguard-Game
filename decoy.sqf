playsound "blink2";
hideobject terrorist;
loop2 = true;

coach sidechat "Cloack active for 15 seconds";
sleep 10;
coach sidechat "Cloack active for 5 seconds";
sleep 5;
loop2 = false;
playsound "blink3";
terrorist hideObject false; 