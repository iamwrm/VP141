t= [6.75 6.82 6.91 6.88 6.91 6.84];
t_mean = mean(t);
t_UR=0.01/t_mean*100;
f1(t)
td= 1.95 * f1(t)


d=[1.995 1.995 1.995 2.000 2.000 1.800 1.995 1.995 2.000 1.995 ];
d_mean = mean(d);
d_UR = 0.005 / d_mean *100 ;
d_mean_m = d_mean/1000;


D =[61.40 61.46 61.20 61.36 61.20 61.50 ];
D_mean = mean(D);
D_UR = 0.02 / D_mean * 100;

metalball_m = 1.357 /40 /1000;
density_metalball = 6 * metalball_m /pi /d_mean_m /d_mean_m /d_mean_m ;

S= [147.0 147.0 146.5 ];
S_pingfang = 0;
for i = [1:3]
S_pingfang = S_pingfang +power((S(i)-mean(S)),2);
end
