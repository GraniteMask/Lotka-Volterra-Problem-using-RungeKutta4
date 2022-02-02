# Solution of Lotka Volterra Problem using Runge Kutta 4

## Runge Kutta 4 Basics:

### Formula:

x_(n+1) = x_n + 1/6*(k1+k2+k3+k4)

t_(n+1) = t_n + h    for n=0,1,2,3,...

where,
1) k1 = f(t_n,x_n)
2) k2 = h*f(t_n + h/2, x_n + k1/2)
3) k3 = h*f(t_n + h/2, x_n + k2/2)
4) k4 = h*f(t_n + h, x_n + k3)

### Representation in MATLAB Code:

1) t_(n+1) is reperesented by t
2) t_n is reperesented by t(k)
3) x_(n+1) is represented by x(:,k+1)
4) x_n is represented by x(:,k)
5) 1/6*(K1+K2+K3+K4) is represented by dx
6) k1+k2+k3+k4 is represented by is represented by k1,k2,k3,k4

### Representation in python Code:

1) t_(n+1) is reperesented by t
2) t_n is reperesented by t[k]
3) x_(n+1) is represented by x[:,k+1]
4) x_n is represented by x[:,k]
5) 1/6*(K1+K2+K3+K4) is represented by dx
6) k1+k2+k3+k4 is represented by is represented by k1,k2,k3,k4

***NOTE: All other important notes are written alongside the code itself in their respective files***

## Runge Kutta 4 Basics:


