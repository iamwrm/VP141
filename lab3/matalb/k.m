L=[2.25	2.84	5.06;
4.4	4.96	9.25;
6.56	7.08	13.38;
8.7	9.18	17.6;
10.78	11.25	21.98;
12.85	13.3	26.09;
15.03	15.42	30.31];

W=[47.30;
94.51;
142.0;
188.4;
235.0;
282.1];

L=L./100;
W=W./1000;

l1=L(:,1);
l2=L(:,2);
l3=L(:,3);

L=l1(1);
l1=l1-L;
l1(1,:)=[];
L=l2(1);
l2=l2-L;
l2(1,:)=[];
L=l3(1);
l3=l3-L;
l3(1,:)=[];

k1=(mean(l1.*W)-mean(l1).*mean(W))/(mean(l1.^2)-mean(l1).^2);
[K]=polyfit(l1,W,1);
k1=K(1)
b1=K(2)
figure;
hold on;
errx = 1e-4*ones(size(l1));
erry = 9.794e-5*ones(size(W));
errorbar(l1,W,erry,erry,errx,errx);
axis([0,0.17,0,0.4]);
xlabel('Change of spring length \Delta_L(m)');
ylabel('Weight(N)');
title('Fitting curve of k_1');
plot(l1,k1.*l1+b1,'r');
legend('Experimental data','Fitting curve');

sigmay=sqrt(1/4.*sum((W-l1.*k1-b1).^2));
sigmak=sigmay./(sqrt(mean(l1.^2)-mean(l1).^2));
uk=sigmak*2.57/2;
sigmab=sqrt(mean(l1.^2)).*sigmak;
ub=sigmab*2.57/sqrt(6);

[K]=polyfit(l2,W,1);
k2=K(1)
b2=K(2)
figure;
hold on;
errx = 1e-4*ones(size(l2));
erry = 9.794e-5*ones(size(W));
errorbar(l2,W,erry,erry,errx,errx);
axis([0,0.17,0,0.4]);
xlabel('Change of spring length \Delta_L(m)');
ylabel('Weight(N)');
title('Fitting curve of k_2');
plot(l2,k2.*l2+b2,'r');
legend('Experimental data','Fitting curve');

sigmay=sqrt(1/4.*sum((W-l2.*k2-b2).^2));
sigmak=sigmay./(sqrt(mean(l2.^2)-mean(l2).^2));
uk=sigmak*2.57/2;
sigmab=sqrt(mean(l2.^2)).*sigmak;
ub=sigmab*2.57/sqrt(6);

[K]=polyfit(l3,W,1);
k3=K(1)
b3=K(2)
figure;
hold on;
errx = 1e-4*ones(size(l3));
erry = 9.794e-5*ones(size(W));
errorbar(l3,W,erry,erry,errx,errx);
axis([0,0.3,0,0.4]);
xlabel('Change of spring length \Delta_L(m)');
ylabel('Weight(N)');
title('Fitting curve of k_3');
plot(l3,k3.*l3+b3,'r');
legend('Experimental data','Fitting curve');


sigmay=sqrt(1/4.*sum((W-l3.*k3-b3).^2));
sigmak=sigmay./(sqrt(mean(l3.^2)-mean(l3).^2))
uk=sigmak*2.57/2
sigmab=sqrt(mean(l3.^2)).*sigmak
ub=sigmab*2.57/sqrt(6)



