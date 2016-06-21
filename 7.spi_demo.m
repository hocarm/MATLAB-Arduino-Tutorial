%Chuong trinh giao tiep SPI
function [] =spi_loopback()
board = arduino ('com9','uno');
finishup = onCleanup(@() exitprogram(board));
spi = spidev(board,10);
k = 3;
m = 10;
n = 30;
disp('press Ctrl-C to exit');
while 1
    disp('datain: ');
    dataIn = [k m n];
    disp(dataIn);
    dataOut = writeRead(spi,dataIn);
    disp('dataout: ');
    disp(dataOut);
    pause(1.5);
    k = k+1;
    m = m+1;
    n = n+1;
end
end
function exitprogram(b)
clear b;
disp('program has exit');
end
