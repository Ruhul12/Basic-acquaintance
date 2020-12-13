# -*- coding: utf-8 -*-
"""
Created on Sun Dec 13 01:14:42 2020

@author: RUHUL AMIN PARVEZ
"""
import re 

def run(string): 

	check = re.compile('[@_!#$%^&*()<>?/\|}{~:]') 
	
		 
	if(check.search(string) == None): 
		print("String is accepted") 
		
	else: 
		print("String is not accepted.") 
	
if __name__ == '__main__' : 
	
	
	string = str(input("Enter a line of string: "))
	run(string) 

