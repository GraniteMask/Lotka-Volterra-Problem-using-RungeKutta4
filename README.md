# Solution of Lotka Volterra Problem using Runge Kutta 4

This project demonstrates the graphical solution for the Lotka-Volterra Equations using Runge-Kutta-4 method. MATLAB and Python both have been used to find the graphical solution.

## Runge-Kutta-4 (RK4) method Basics:

*Runge-Kutta-4 is the most widely known member of Runge-Kutta family, used for the approximate solution of ordinary differential equations (ODE).*

### Mathematical Equations:

```
x_(n+1) = x_n + 1/6*(k1+k2+k3+k4)
t_(n+1) = t_n + h    for n=0,1,2,3,...

where,
1) k1 = f(t_n,x_n)
2) k2 = h*f(t_n + h/2, x_n + k1/2)
3) k3 = h*f(t_n + h/2, x_n + k2/2)
4) k4 = h*f(t_n + h, x_n + k3)
```
### Representation in MATLAB Code:

1) t_(n+1) is reperesented by t
2) t_n is reperesented by `t(k)`
3) x_(n+1) is represented by `x(:,k+1)`
4) x_n is represented by `x(:,k)`
5) 1/6*(K1+K2+K3+K4) is represented by dx
6) k1+k2+k3+k4 is represented by is represented by k1,k2,k3,k4

### Representation in python Code:

1) t_(n+1) is reperesented by t
2) t_n is reperesented by `t[k]`
3) x_(n+1) is represented by `x[:,k+1]`
4) x_n is represented by `x[:,k]`
5) 1/6*(K1+K2+K3+K4) is represented by dx
6) k1+k2+k3+k4 is represented by is represented by k1,k2,k3,k4

***NOTE: All other important notes are written alongside the code itself in their respective files.***

## Lotka-Volterra Basics:

*The Lotka-Volterra equations or prey-predator equations, are a pair of first-order non-linear differential equations, used to describe the dynamics of biological systems in which two species interact, one as a predator and the other as prey.*

### Mathematical Equations:

```
dx/dt = α*x - β*x*y
dy/dt = δ*x*y - γ*y
```
### Representation in MATLAB Code:

```
xdot = [alpha*x(1) - beta*x(1)*x(2)
            delta*x(1)*x(2) - gamma*x(2)];
```

### Representation in Python Code:

```
xdot = np.array([alpha*x[0] - beta*x[0]*x[1], delta*x[0]*x[1] - gamma*x[1]])
```

***NOTE: Please see the coding files for more information regarding the application part of Lotka-Volterra***

## Graphical Results:

### MATLAB Plot Result:

![MATLAB PLOT RESULT](https://github.com/GraniteMask/Lotka-Volterra-Problem-using-RungeKutta4/blob/master/plotResultsMatlab.jpg?raw=true)

### Python Plot Result:

![PYTHON PLOT RESULT](https://github.com/GraniteMask/Lotka-Volterra-Problem-using-RungeKutta4/blob/master/plotResultsPython.png?raw=true)

*Both plots are approximately same as both python and MATLAB codes have same initial conditions*
