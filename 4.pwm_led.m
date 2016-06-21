function [] = led_rgb()
board = arduino('com9','uno');
finishup =onCleanup(@() exitprogram(board));
%Cau hinh pin de PWM
%Luu y chon dung chan pwm la chan 3 5 6 9 10 11
configurePin(board, 'D3','PWM');
configurePin(board, 'D5','PWM');
configurePin(board, 'D6','PWM');
disp('press Ctrl-C to exit');
while 1
    disp('yellow');
    write_rgb(board,1,0,0);
    pause(1);
    disp('green');
    write_rgb(board,0,1,0);
    pause(1);
    disp('red');
    write_rgb(board,0,0,1);
    pause(1);
    disp('yellow 10%');
    write_rgb(board,0.1,0,0);
    pause(1);
    disp('green 510%');
    write_rgb(board,0,0.1,0);
    pause(1);
    disp('red 10%');
    write_rgb(board,0,0,0.1);
    pause(1);
end
end
function write_rgb(board,r,g,b)
writePWMDutyCycle(board,'D3',r);
writePWMDutyCycle(board,'D5',g);
writePWMDutyCycle(board,'D6',b);
end

function exitprogram(b)
   clear b;
   disp('program has exit');
end