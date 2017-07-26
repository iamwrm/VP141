theta1=[42;
56 ;
78 ;
107 ;
123 ;
132 ;
138 ;
140 ;
140 ;
 141;
 140;
 140;
 138;
 134;
 126;
 121;
 116;
 112;
 106;
 98 ;
 88 ;
 76 ;
 64 ];

errx = sqrt((20.*pi./(tenT1).^2./4.058).^2.*(0.001).^2+...
    (20.*pi./tenT1./4.058^2).^2.*(0.004).^2 );

errorbar(x1,theta1,erry,erry,errx,errx);
hold on;

theta2=[60 ;
67;
74 ;
86 ;
96 ;
108 ;
120 ;
124 ;
126 ;
 128;
 128;
 126;
 124;
 120;
 115;
 110;
 100;
 90 ;
 82 ;
 74 ;
 66 ;
 56 ;
 46 ];

errx = sqrt((20.*pi./(tenT2).^2./4.058).^2.*(0.001).^2+...
    (20.*pi./tenT2./4.058^2).^2.*(0.004).^2 );

errorbar(x2,theta2,erry,erry,errx,errx);
xlabel('\omega/\omega_0');
ylabel('Amplitude \theta(^\circ)');
legend('Damping selection 2','Damping selection 3');
grid;