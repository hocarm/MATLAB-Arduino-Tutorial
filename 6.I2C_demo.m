%Chuong trinh giao tiep I2C voi chip bat ky
%Thuc hien quet I2C, xem dia chi cua thiet bi giao tiep I2C
board = arduino('com9','uno');
address = scanI2CBus(board,0); %Voi board uno = 0
disp(['i2c address: ', address]);
clear board;