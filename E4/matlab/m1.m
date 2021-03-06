A= [11.38 , 160.00;
12.06 , 170.00;
12.74 , 180.00;
13.42 , 190.00;
14.12 , 200.00;
14.82 , 210.00;
15.38 , 220.00;
16.06 , 230.00;
16.74 , 240.00;
17.42 , 250.00;
18.10 , 260.00;
18.68 , 270.00];

l=A(:,2)/1000;
t=A(:,1)/100000;

figure;
hold on;
errx = 0.2e-6*ones(size(t));
erry = 0.01e-3*ones(size(l));
errorbar(t,l,erry,erry,errx,errx);
xlabel('Time(s)');
ylabel('Distance(m)');
[K]=polyfit(t,l,1);
k1=K(1);
b1=K(2);
plot(t,k1.*t+b1,'r');
legend('Experimental data','Fit curve');
%axis([0.185,0.22,1.6,1.9]);
grid;