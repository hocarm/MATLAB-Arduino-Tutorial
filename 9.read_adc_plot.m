%Chuong trinh doc bien tro
%Su dung lai chuong trinh nay, sau do hien thi gia tri doc duoc len do thi
function [] = potentiometer()
board = arduino();
finishup = onCleanup(@() exitprogram(board));
disp('press Ctrl-C to exit');
hLine = line(nan, nan, 'Color', 'red');
i = 0;
while 1
    analog = readVoltage(board,'A0');
    disp(['analog = ',num2str(analog)]);
    pause(1);
    x = get(hLine, 'XData');
    y = get(hLine, 'YData');
    x = [x i];
    y = [y analog];
    set(hLine, 'XData', x, 'YData', y);
    i = i+1;
    pause(1);
end
end

function exitprogram(b)
clear b;
disp('program has exit');
end