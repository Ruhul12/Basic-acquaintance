# -*- coding: utf-8 -*-
"""
Created on Sun Dec 13 01:47:07 2020

@author: RUHUL AMIN PARVEZ
"""
sTest = str(input("Enter a line of string: "))


if(sTest.count('/') == 2):
    print("This line have a Double Slash") 

elif(sTest.count('/') == 1):
    print("Single Slash Found")
    print("Single Slash Found At Position: ",sTest.find("/"))
else:
    print("Test string have no slash")
    
    
    
