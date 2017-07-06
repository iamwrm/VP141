T=[12798.9	12804.1	12800.1;
12964.9	12957	12955.4;
13127.2	13123.7	13127;
13282.6	13282.7	13275.6;
13436.3	13439.3	13436.3;
13592.4	13591.6	13594.9];

W=[188.55;
193.37;
198.22;
202.96;
207.71;
212.52];

T=T/1000/10;
M=W/1000;

T1=T(:,1);
T2=T(:,2);
T3=T(:,3);

figure;
hold on;
errx = 1e-4*ones(size(M))/10;
erry = 1e-5*ones(size(T1))*2.*T1;
errorbar(M,T1.^2,erry,erry,errx,errx);
xlabel('Effective mass with I-shape shutter M (kg)');
ylabel('The square of one period T^2 (s^2)');
[K]=polyfit(M,T1.^2,1);
k1=K(1);
b1=K(2);
plot(M,k1.*M+b1,'r');
legend('Experimental data','Fitting curve');
axis([0.185,0.22,1.6,1.9]);
grid;

figure;
hold on;
errx = 1e-4*ones(size(M))/10;
erry = 1e-5*ones(size(T2))*2.*T2;
errorbar(M,T2.^2,erry,erry,errx,errx);
xlabel('Effective mass with I-shape shutter M (kg)');
ylabel('The square of one period T^2 (s^2)');
[K]=polyfit(M,T2.^2,1);
k1=K(1);
b1=K(2);
plot(M,k1.*M+b1,'r');
legend('Experimental data','Fitting curve');
axis([0.185,0.22,1.6,1.9]);
grid;

figure;
hold on;
errx = 1e-4*ones(size(M))/10;
erry = 1e-5*ones(size(T3))*2.*T3
errorbar(M,T3.^2,erry,erry,errx,errx);
xlabel('Effective mass with I-shape shutter M (kg)');
ylabel('The square of one period T^2 (s^2)');
[K]=polyfit(M,T3.^2,1);
k1=K(1);
b1=K(2);
plot(M,k1.*M+b1,'r');
legend('Experimental data','Fitting curve');
axis([0.185,0.22,1.6,1.9]);
grid;
