dt=[41.69;
20.61;
13.82;
10.45;
8.39;
7.03;
];

dt=dt/1000;

xin=[4.48;
4.52;
4.46;
];

xout=[15.40;
15.40;
15.42;
];

xin=xin/1000;
xout=xout/1000;

dx=mean((xin+xout)/2);

sqrt(sum((xout-mean(xout)).^2)/3/2);

dx=9.95e-3*ones(size(dt));

udx=4e-5*ones(size(dx));

udt=1e-5*ones(size(dt));

uv=sqrt((udx./dt).^2+(dx).^2./(dt).^4.*udt.^2)

v=dx./dt;
v2=v.^2;
uv2=2.*v.*uv

A=[5;
10;
15;
20;
25;
30;
];

A=A./100;

A2=A.^2;

ua=1e-3*ones(size(A));

ua2=2.*A.*ua

ua2./A2*100

figure;
hold on;
errx = ua2;
erry = uv2;
errorbar(A2,v2,erry,erry,errx,errx);
ylabel('v_{max}^2 (m^2/s^2)');
xlabel('A^2 (m^2)');
[K]=polyfit(A2,v2,1);
k1=K(1);
b1=K(2);
x=[0,0.12];
plot(x,k1.*x+b1,'r');
legend('Experimental data','Fitting curve');
%axis([0,0.40,1.2,1.3]);
grid;