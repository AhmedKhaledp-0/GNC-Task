close all
clear
clc

K_values = [0.1, 0.5, 1.0, 5.0, 10.0];
for i = 1:length(K_values)
    K = K_values(i);
    m=0; c=1; k=1;
    G=tf (K, [m c k]);
    step(G, 30);
    hold on
%response to unit step input
end
title('أحمد خالد فتحي أحمد');
legend('K=0.1','K=0.5','K=1.0','K=5.01','K=10.0')
grid
    