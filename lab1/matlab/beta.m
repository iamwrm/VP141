t11=[0.4748 0.9520 1.4311 1.9131 2.3975 2.8843 3.3738 3.8665];
t12=[0.7761 1.3508 1.8366 2.2633 2.6480 3.0014 3.3299 3.6383];
t21=[0.6150 1.2334 1.8548 2.4803 3.1085 3.7404 4.3765 5.0164];
t22=[0.9789 1.7085 2.3176 2.8516 3.3332 3.7747 4.1853 4.5701];
t31=[0.5987 1.2010 1.8081 2.4173 3.0291 3.6429 4.2600 4.8792];
t32=[1.1370 1.9548 2.6283 3.2142 3.7402 4.2213 4.6676 5.0855];
t41=[0.5702 1.1439 1.7209 2.3022 2.8866 3.4748 4.0660 4.6609];
t42=[0.8071 1.4176 1.9295 2.3788 2.7848 3.1574 3.5055 3.8331];
t51=[0.5611 1.1250 1.6916 2.2618 2.8345 3.4103 3.9888 4.5704];
t52=[0.8086 1.4397 1.9758 2.4497 2.8797 3.2757 3.6453 3.9925];
theta=linspace(pi,8*pi,8);

figure;
hold on;
grid;
t=t51;
errx = (0.004e-2*t+0.0001).*ones(size(t))
erry = 0*ones(size(theta));
errorbar(t,theta,errx,'horizontal','ob');
xlabel('t(s)');
ylabel('\theta=k\pi (rad)');
[K]=polyfit(t,theta,2);
a=K(1);
b=K(2);
c=K(3);
x=t;
plot(x,a.*x.^2+b.*x+c);


t=t52;
errx = (0.004e-2*t+0.0001).*ones(size(t))
erry = 0*ones(size(theta));
errorbar(t,theta,errx,'horizontal','sr');
xlabel('t(s)');
ylabel('\theta=k\pi (rad)');
[K]=polyfit(t,theta,2);
a=K(1);
b=K(2);
c=K(3);
x=t;
plot(x,a.*x.^2+b.*x+c);
legend('\beta_9','Fitting curve','\beta_{10}','Fitting curve');
axis([0,6,0,37]);