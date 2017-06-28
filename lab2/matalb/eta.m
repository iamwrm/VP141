function [ans]=eta(r_,u_r,rho__2_,u_rho__2,rho_1_,u_rho_1,t_,u_t,s_,u_s,r_c_,u_r_c)
    syms e r rho__2 rho_1 t s r_c g;
    e=2/9*g*r.^2.*(rho__2-rho_1).*t./s./(1+2.4.*r./r_c);
    A=diff(e,r);
    B=diff(e,rho__2);
    C=diff(e,rho_1);
    D=diff(e,t);
    E=diff(e,s);
    F=diff(e,r_c);
    'aa'
    pretty(A)
    'bb'
    pretty(B)
    'cc'
    pretty(C)
    'dd'
    pretty(D)
    'ee'
    pretty(E)
    'ff'
    pretty(F)
    g=9.794;
    u=sqrt(subs(A,{r,rho__2,rho_1,t,s,r_c},{r_,rho__2_,rho_1_,t_,s_,r_c_}).^2.*(u_r).^2+ ...
           subs(B,{r,rho__2,rho_1,t,s,r_c},{r_,rho__2_,rho_1_,t_,s_,r_c_}).^2.*(u_rho__2).^2+ ...
           subs(C,{r,rho__2,rho_1,t,s,r_c},{r_,rho__2_,rho_1_,t_,s_,r_c_}).^2.*(u_rho_1).^2+ ...
           subs(D,{r,rho__2,rho_1,t,s,r_c},{r_,rho__2_,rho_1_,t_,s_,r_c_}).^2.*(u_t).^2+ ...
           subs(E,{r,rho__2,rho_1,t,s,r_c},{r_,rho__2_,rho_1_,t_,s_,r_c_}).^2.*(u_s).^2+ ...
           subs(F,{r,rho__2,rho_1,t,s,r_c},{r_,rho__2_,rho_1_,t_,s_,r_c_}).^2.*(u_r_c).^2);
    ans=eval(u);
end
%eta(1.985/2000,0.005/1000,8285,252,955,1,8.38,0.1,180.2/1000,1.9/1000,62.41/2000,0.21/1000);