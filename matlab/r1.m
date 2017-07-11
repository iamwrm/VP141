clear all;
clc;
massofweight =[4.65  9.32  14.17 18.99 23.80 28.51];
gravityofweight = massofweight * 9.794 /1000;

force  = [0.0455 0.0913 0.1388 0.1860 0.2331 0.2792];

spring1 = [2.00 3.96 5.96  8.02  10.04  12.02 ] / 100;
spring2 = [2.01 4.00 6.03  8.06  10.08  12.10 ] / 100;
spring3 = [3.96 7.94 11.90 16.40 19.94  24.02 ] / 100;

[gof1,k1] = f1(force,spring1,1);
[gof2,k2] = f1(force,spring2,2);
[gof3,k3] = f1(force,spring3,3);
[k1;k2;k3]
