l=[230.00 ;
220.00 ;
210.00 ;
200.00 ;
190.00 ;
180.00 ;
170.00 ;
160.00 ;
150.00 ;
 140.00;
130.00 ;
120.00 ];

t=[159.6; 
154.4 ;
148.2 ;
141.8 ;
134.0 ;
128.0 ;
121.4 ;
114.4 ;
108.0 ;
 101.6;
 94.8 ;
 87.8 
];

l=l./1000;
t=t./1000000;

figure;
hold on;
errx = 0.2e-6*ones(size(t));
erry = 0.01e-3*ones(size(l));
errorbar(t,l,erry,erry,errx,errx);
xlabel('Time(s)');
ylabel('Travelling distance(m)');
[K]=polyfit(t,l,1);
k1=K(1);
b1=K(2);
plot(t,k1.*t+b1,'r');
legend('Experimental data','Fitting curve');
%axis([0.185,0.22,1.6,1.9]);
grid;