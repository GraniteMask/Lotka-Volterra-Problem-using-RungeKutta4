# -*- coding: utf-8 -*-
"""
Created on Wed Feb  2 02:56:21 2022

@author: Ratnadeep Das Choudhury
"""


import numpy as np
import matplotlib.pyplot as plt

# Defining the General Model

def LV(x,params):
    
    alpha = params['alpha']
    beta = params['beta']
    gamma = params['gamma']
    delta = params['delta']
    
    xdot = np.array([alpha*x[0] - beta*x[0]*x[1], delta*x[0]*x[1] - gamma*x[2]])
    
    return xdot

# Defining the Runge Kutta 4 Method

def RK4(f, x0, t0, tf, dt):
    
    t = np.arrange(t0, tf, dt)
    nt = t.size(t0)
    
    nx = x0.size(t0)
    x = np.zeroes((nx,nt))
    
    x[:,0] = x0
    
    for k in range(nt-1):
    