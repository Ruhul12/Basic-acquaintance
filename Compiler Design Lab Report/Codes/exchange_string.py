# -*- coding: utf-8 -*-
"""
Created on Sun Dec 13 20:52:16 2020

@author: RUHUL AMIN PARVEZ
"""


equation = input("Enter a equation: ")


chng_one = input("Which letter do you want to change: ")
chng_two = input("Which letter do you want to put: ")

equation = equation.replace(chng_one, chng_two)

print(f"Now the equation is: ",equation)




