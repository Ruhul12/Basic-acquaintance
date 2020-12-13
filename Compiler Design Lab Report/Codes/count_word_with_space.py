# -*- coding: utf-8 -*-
"""
Created on Sat Dec 12 21:01:41 2020

@author: RUHUL AMIN PARVEZ
""" 
space=0
test_string = str(input("Enter a line of string: "))

print ("The original string is : " + test_string) 

res = len(test_string.split()) 

for i in test_string:
    if(i.isspace()):
        space = space+1

print ("The number of words in string are : " + str(res)) 
print("The number of blank spaces is: ",space)
