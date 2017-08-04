theta1=traw1(:,2);

o0=3.9787;

errx = sqrt((20.*pi./(tenT1).^2./o0).^2.*(0.001).^2+...
    (20.*pi./tenT1./o0^2).^2.*(0.004).^2 );

errorbar(x1,theta1,erry,erry,errx,errx);
hold on;

theta2=traw2(:,2);

errx = sqrt((20.*pi./(tenT2).^2./o0).^2.*(0.001).^2+...
    (20.*pi./tenT2./o0^2).^2.*(0.004).^2 );

errorbar(x2,theta2,erry,erry,errx,errx);
xlabel('\omega/\omega_0');
ylabel('Amplitude \theta(^\circ)');
legend('Damping selection 2','Damping selection 3');
grid;