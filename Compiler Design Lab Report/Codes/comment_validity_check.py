# -*- coding: utf-8 -*-
"""
Created on Sat Dec 12 23:57:00 2020

@author: RUHUL AMIN PARVEZ
"""

comment_test = str(input("Enter a line of string: "))


check_one = comment_test[0]
check_two = comment_test[1]

check_last_one = comment_test[-1]
check_last_two = comment_test[-2]

if check_one == "/" and check_two == "/":
    print("It's a single line comment")
    
elif check_one == "/" and check_two == "*"  and check_last_two == "*" and check_last_one == "/":
    print("It's a multipleline comment")
    
else:
    print("It's not a comment")
    
    