import random as r 
from math import gcd
import sys

def are_comprimes(i, j):
    return gcd(i, j) == 1

def compute_probab():
    num_one = r.randint(2, 1000)
    num_two = r.randint(2, 1000)
    product_of_probs = 1
    target = num_two
    if num_one < num_two:
        target = num_one
    for p in range(2, target):
        prob_of_not_divisible = (1 - (1/(p*p)))
        product_of_probs = float(product_of_probs) * float(prob_of_not_divisible)
    print("Probab of "+str(num_one)+" and "+str(num_two)+" not being co-prime is "+str(product_of_probs))
    compute_probab_by_brute_force()

def compute_probab_by_brute_force():
    number_of_coprimes = 0
    count = 0
    for i in range(2, 1000):
        for j in range(2, 1000):
            count += 1
            if are_comprimes(i,j):
                number_of_coprimes += 1
    print("Probab with brute force: "+ str(number_of_coprimes/count))


compute_probab()