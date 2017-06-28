function [ans]=u_rrho_2(m_0_,d_,u_m_0,u_d)
    syms rho m_0 d;
    rho=6*m_0./pi./(d.^3);
    rhox=diff(log(rho),m_0);
    pretty(rhox)
    rhoy=diff(log(rho),d);
    pretty(rhoy)
    u=sqrt(subs(rhox,{m_0,d},{m_0_,d_}).^2*u_m_0.^2+subs(rhoy,{m_0,d},{m_0_,d_}).^2*u_d.^2);
    ans=eval(u);
end
%u_rrho_2(0.00003393,0.001985,0.000001,0.000005)