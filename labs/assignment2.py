import random as r

def get_arrivals():
    first = r.randint(0,60)
    second = r.randint(0,60)
    return first, second

def compute_probab():
    less_than_20 = 0
    for i in range(0, 1000):
        first = get_arrivals()[0]
        second = get_arrivals()[1]
        difference = first - second
        if abs(difference) < 20:
            less_than_20 += 1
    probab = less_than_20/1000
    print(probab)
        
compute_probab()
