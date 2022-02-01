# -*- coding: utf-8 -*-
"""
Created on Wed Feb  2 02:56:21 2022

@author: Ratnadeep Das Choudhury
"""


import numpy as np
import matplotlib.pyplot as plt

#Defining the General Model

def LV(x,params):
    
    alpha = params['alpha']
    beta = params['beta']
    gamma = params['gamma']
    delta = params['delta']
    
    xdot = np.array([alpha*x[0] - beta*x[0]*x[1], delta*x[0]*x[1]])