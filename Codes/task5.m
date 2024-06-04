clc
close all
clear 

m1=0;c1=1;k1=1;
G1 = tf (1,[m1 c1 k1]);
display (G1)

m2=0;c2=1;k2=3;k3=2;
G2 = tf ([m2 c2 k3],[m2 c2 k2]);

 Gs = series (G1,G2);
 display (Gs)

 Gf = feedback (G1,G2);
 display (Gf)
step (G1,30)
hold on
step (Gf,30)
hold on
step (Gs,30)
legend('G1','Gf','Gs')
disp 'Becaus the system is negative feedback ';
disp 'Then the final value = G1 - Gf = 1 - 0.6 = 0.4  '
title('أحمد خالد فتحي أحمد');
