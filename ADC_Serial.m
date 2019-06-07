function ADC_Serial(muestras)
close all, clc;
voltaje=0;
delete(instrfind({'port'},{'COM4'}));
puerto=serial('COM4');
puerto.BaudRate=115200;  

fopen(puerto);
contador=1;
figure('Name','Grafica voltaje')
title('GRAFICA VOLTAJE ADC-SERIAL');
xlabel('Numero de Muestras');
ylabel('Voltaje(V)');
grid off;
hold on;

while contador<=muestras
    ylim([0 5.1]);
    xlim([0 muestras]);
    valorADC = fscanf(puerto,'%d')'
    voltaje(contador)=valorADC(1)*5/1024;
    plot(voltaje);
    drawnow
    contador=contador+1;
end

fclose(puerto);
delete(puerto);
clear all;
end


