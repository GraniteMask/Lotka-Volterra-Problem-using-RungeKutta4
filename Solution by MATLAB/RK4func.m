function [x,t] = RK4(f, x0, t0, tf, dt) % f=function describing differential equation system, x0=initial condition, t0=initial time, tf=final time, dt=sample time

    nt = numel(t);  % nt= number of the time points, numel=number of elements
    nx = numel(x0);
    
    t = t0:dt:tf;   % It means time vector is from t0 to tf with increasing time step of dt
    x= nan(nx,nt)
end