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
    print("Probablity with 2 random times and 1000 range: "+str(probab))
    compute_probab_by_brute_force()
        

def compute_probab_by_brute_force():
    less_than_20 = 0
    count = 0
    for i in range(0, 60):
        for j in range(0,60):
            if abs(i - j) <  20:
                less_than_20 += 1
            count += 1
    probab = less_than_20/count
    print("Probablity with brute force: "+str(probab))



compute_probab()
