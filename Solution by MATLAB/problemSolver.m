%% SOLVING THE LOTKA-VOLTERRA MODEL

params.alpha = 1.1;
params.beta = 0.4;
params.gamma = 0.4;
params.delta = 0.1;

f = @(t,x) LVFunc(x, params);  %Defining f as a function of t and x & referencing it to LV fuunction which we have created