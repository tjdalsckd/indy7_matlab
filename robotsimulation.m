addpath('mr')
addpath('function')

clear
close all;
H1 = 0.3
H2 = 0.45
H3 = 0.350
H4 = 0.228
W1 = 0.0035
W2 = 0.183
fv0 = stlread('mesh/Indy7_0.stl');
fv1 = stlread('mesh/Indy7_1.stl');
fv2 = stlread('mesh/Indy7_2.stl');
fv3 = stlread('mesh/Indy7_3.stl');    
fv4 = stlread('mesh/Indy7_4.stl');   
fv5 = stlread('mesh/Indy7_5.stl');
fv6 = stlread('mesh/Indy7_6.stl');      

show_mesh = 1
for i = 1:1:100
    
thetalist = [pi/3*cos(pi*i/100) pi/3*cos(pi*i/100) pi/3*cos(pi*i/100) pi/3*cos(pi*i/100) pi/3*cos(pi*i/100) pi/3*cos(pi*i/100)];
subplot(1,2,1)

drawrobot(thetalist,show_mesh,fv0,fv1,fv2,fv3,fv4,fv5,fv6);
title('D-H parameter')
subplot(1,2,2)

drawrobot_screw(thetalist,show_mesh,fv0,fv1,fv2,fv3,fv4,fv5,fv6);
title('PoE')
end

