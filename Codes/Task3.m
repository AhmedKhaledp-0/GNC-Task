clc
close all
clear 
syms y(t) s Y u(t) U

Dy = diff(y,t,2) + 5*diff(y,t) + 25*y == 25*u;

LHS = laplace(Dy, t, s);

LHS = subs(LHS,{laplace(y,t,s),laplace(u,t,s),y(0),subs(diff(y,t),t,0)}, {Y,U,0,0});

pretty (LHS)

Y_over_U = solve(LHS,Y)/U;

pretty (str2sym('Y(s)')/str2sym('U(s)')) 

pretty   (solve(LHS,Y)/U)
m=1 ;c=5;k=25;
G = tf(25,[m c k]);
step(G,30)

title('أحمد خالد فتحي أحمد');
