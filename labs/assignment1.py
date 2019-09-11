import random as r 
import sys

def compute_probab():
    num_one = r.randint(2, sys.maxsize)
    num_two = r.randint(2, sys.maxsize)
    product_of_probs = 1
    target = num_two
    if num_one < num_two:
        target = num_one
    print(target)
    for p in range(2, target):
        prob_of_not_divisible = (1 - (1/(p*p)))
        print(prob_of_not_divisible)
        product_of_probs = float(product_of_probs) * float(prob_of_not_divisible)
    print("Probab of "+str(num_one)+" and "+str(num_two)+" not being co-prime is "+str(product_of_probs))

compute_probab()