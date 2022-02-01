function [x,t] = RK4(f, x0, t0, tf, dt) % f=function describing differential equation system, x0=initial condition, t0=initial time, tf=final time, dt=sample time
    %% RUNGE KUTTA FORMULA
    
        %{ 
             x_(n+1) = x_n + 1/6*(K1+K2+K3+K4)
             t_(n+1) = t_n + h    for n=0,1,2,3,...
    
             So in the application part, 
             1) t_(n+1) is reperesent by t
             2) x_(n+1) is represented by x(:,k+1)
             3) x_n is represented by x(:,k)
             4) 1/6*(K1+K2+K3+K4) is represented by dx
             5) K1+K2+K3+K4 is represented by is represented by dx
    
        %}
    
    
    %% RUNGE KUTTA 4 APPLICATION USING A LOOP
    
    nt = numel(t);  % nt= number of the time points, numel=number of elements
    nx = numel(x0);
    
    t = t0:dt:tf;   % It means time vector is from t0 to tf with increasing time step of dt
    x= nan(nx,nt);   % An array with all NaN values which has nx rows and nt columns
    
    x(:,1)=x2;

    for k = 1:nt-1
       
        k1 = dt*f(t(k), x(:,k));
        dx=(k1 + 2*k2 + 2*k3 +k4)/6;
        x(:,k+1) = x(:,k) + dx;   
        
    end
end