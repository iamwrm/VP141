function [ans]=rho_2(m_0_,d_,u_m_0,u_d)
    syms rho m_0 d;
    rho=6*m_0./pi./(d.^3);
    rhox=diff(rho,m_0);
    rhoy=diff(rho,d);
    pretty(rhoy)
    u=sqrt(subs(rhox,{m_0,d},{m_0_,d_}).^2*u_m_0.^2+subs(rhoy,{m_0,d},{m_0_,d_}).^2*u_d.^2);
    ans=eval(u);
    
end
%rho_2(0.00003393,0.001985,0.000001,0.000005)