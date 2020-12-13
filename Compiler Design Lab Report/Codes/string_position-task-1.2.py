# -*- coding: utf-8 -*-
"""
Created on Sat Dec 12 20:28:45 2020

@author: RUHUL AMIN PARVEZ
"""


ini_string = str(input("Enter a line of string: "))

# Character to find 
c = str(input("Enter character to find: "))



res = None
for i in range(0, len(ini_string)): 
	if ini_string[i] == c: 
		res = i + 1
		break
	
if res == None: 
	print ("No such charater available in string") 
else: 
	print ("Character {} is present at {}".format(c, str(res))) 
