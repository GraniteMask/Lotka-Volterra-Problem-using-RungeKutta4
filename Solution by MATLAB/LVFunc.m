%{
function xdot = LV(~, x) t=time variable but since we are not using it so replace it with ~, x=state variable
alpha = 1.1;
    beta = 0.4;
    gamma = 0.4;
    delta = 0.1;
    
    xdot = [alpha*x(1) - beta*x(1)*x(2)
            delta*x(1)*x(2) - gamma*x(2)];  %x(1) is the population of prey and x(2) is the population of predator
    

   end
%}

% or we can write 

function xdot = LV(x, params)
   
    
    xdot = [alpha*x(1) - beta*x(1)*x(2)
            delta*x(1)*x(2) - gamma*x(2)];  %x(1) is the population of prey and x(2) is the population of predator
    

end