function xdot = LV(t, x) % t=time variable, x=state variable

    alpha = 1.1;
    beta = 0.4;
    gamma = 0.4;
    delta = 0.1;
    
    xdot = [alpha*x(1) - beta*x(1)*x(2)
            delta*x(1)*x(2) - gamma*x(2)];
    

end