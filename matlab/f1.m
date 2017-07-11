function [ xxx, kkk  ] = f1( force,spring1,kx )
[xData, yData] = prepareCurveData( spring1, force );
[fitresult, gof] = fit( xData, yData, fittype( 'poly1' ));
k1=fitresult.p1;
b1=fitresult.p2;
figure;
hold on;
errx = 1e-4*ones(size(spring1));
erry = 9.794e-5*ones(size(force));
errorbar(spring1,force,erry,erry,errx,errx);
xlabel('\Delta_L(m)');
ylabel('Weight(N)');
title(['Fitting curve of k_', num2str(kx)]);
plot(spring1,k1.*spring1+b1,'r');
legend('Data from the experient','Fit curve');
grid;
xxx = gof ;
kkk = k1  ;
end

