clear all;
clc;

% For result
%	       |----- v^2 and A  

A = [ 5.0, 10.0, 15.0, 20.0, 25.0, 30.0 ]; % in cm
A = A / 100; % in m 

dt = [42.60, 20.56, 13.57, 10.34,  8.25,  6.90 ]; % in ms
dt = dt / 1000; % in s 


%%%

[gof1,k1] = f2(T,A);

