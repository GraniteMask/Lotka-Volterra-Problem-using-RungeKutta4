%% DEFINING THE PROBLEM

params.alpha = 1.1;
params.beta = 0.4;
params.gamma = 0.4;
params.delta = 0.1;

f = @(t,x) LVFunc(x, params);  %Defining f as a function of t and x & referencing it to LV fuunction which we have created

x0 =[20; 5];

%% SOLVING THE PROBLEM

t0 = 0;
tf = 70;
dt = 0.01;

[x, t] = RK4func(f, x0, t0, tf, dt);

%% PLOTTING THE RESULTS

figure;

subplot(1,2,1);  % It means this figure will be plotted in the first row and first column where there are total of 1 row and 2 column
plot(t, x);
legend('Preys', 'Predators');
xlabel('Time(t)');
title('t vs x')
grid on;

subplot(1,2,2);
plot(x(1,:), x(2,:));
xlabel('Preys');
ylabel('Predators')
title('Limit cycle behaviour')
grid on;