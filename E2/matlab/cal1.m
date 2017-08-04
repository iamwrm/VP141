clear all 
clc
syms r m d u 
um =  2.5 * power(10,-8);
ud = 0.76/100;
r= 6*m/pi/d^3;

u = sqrt(  (diff(r,m) * um )^2 +(diff(r,d) * ud )^2    )
m = 3.3925* 10^(-5);
d= 1.977 * 10^(-3);
eval(u)