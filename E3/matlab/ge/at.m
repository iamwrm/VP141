A=[0.05:0.05:0.3]';
T=[12645.1;
12636.1;
12628.7;
12635.8;
12636.2;
12636;
];

T=T/1000/10;

figure;
hold on;
errx = 1e-3*ones(size(A));
erry = 1e-4*ones(size(T));
errorbar(A,T,erry,erry,errx,errx);
ylabel('One period T(s)');
xlabel('Amplitude A(m)');
[K]=polyfit(A,T,1);
k1=K(1);
b1=K(2);
x=[0,0.35];
plot(x,k1.*x+b1,'r');
legend('Experimental data','Fitting curve');
axis([0,0.40,1.2,1.3]);
grid;