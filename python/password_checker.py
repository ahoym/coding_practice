'''
Given a password string, return True if it's a strong password, False otherwise.
What constitutes a strong password:
    + Greater or equal to 10 characters long
    + Contains at least one lower case letter
    + Contains at least one upper case letter
    + Contains at least one number
'''

def password_check(str):
    if len(data) < 10:
        return False

    lowercase = False
    number = False
    uppercase = False

    for char in list(data):
        if char.isupper():
            uppercase = True 
        if char.isdigit():
            number = True
        if char.islower():
            lowercase = True 

    return lowercase and number and uppercase
  

# using regex  
import re

def password_checkII(str):
    if len(data) < 10:
        return False
    for r in ('[a-z]', '[A-Z]', '\d'):
        if re.search(r, data) is None:
            return False
    return True