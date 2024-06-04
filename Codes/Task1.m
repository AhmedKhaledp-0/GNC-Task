close all
clear
clc

T_values = [0.1, 0.5, 1.0, 5.0, 10.0];
for i = 1:length(T_values)
    T = T_values(i);
    m=0; c=T; k=1;
    G=tf (1, [m c k]);
    step(G, 30);
    hold on
%response to unit step input
end
title('أحمد خالد فتحي أحمد');
legend('T=0.1','T=0.5','T=1.0','T=5.01','T=10.0')
grid
    