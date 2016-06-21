%Chuong trinh PWM sang dan tat dan LED
function [] = led_brightness()
board = arduino('com9','uno');
finishup = onCleanup(@() exitprogram(board));
configurePin(board,'D3', 'PWM'); %su dung pin 3 vi co PWM
disp('press Ctr-C to exit');
while 1
    for k = 0:5
        writePWMVoltage(board, 'D3',k);
        pause(1);
    end
    for k = 5:-1:0
        writePWMVoltage(board, 'D3',k);
        pause(1);
    end
end
end
function exitprogram(b)
clear b;
disp('program has exit');
end