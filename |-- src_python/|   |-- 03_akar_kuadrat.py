#PROGRAM 3: AKAR PERSAMAAN KUADRAT

import math

def hitung_akar(a, b, c):
    # Hitung diskriminan
    D = b**2 - 4 * a * c
    
    if D > 0:
        x1 = (-b + math.sqrt(D)) / (2 * a)
        x2 = (-b - math.sqrt(D)) / (2 * a)
        print("STATUS: VALID - Akar real berbeda")
        print(f"Diskriminan (D) = {D}")
        print(f"x1 = {x1:.3f}")
        print(f"x2 = {x2:.3f}")
    
    elif D == 0:
        x = -b / (2 * a)
        print("STATUS: VALID - Akar real kembar")
        print(f"Diskriminan (D) = {D}")
        print(f"x1 = x2 = {x:.3f}")
    
    else:
        print("STATUS: VALID - Akar imajiner")
        print(f"Diskriminan (D) = {D}")
        print("Persamaan hanya memiliki akar imajiner")


# SKENARIO 1 
print("SKENARIO 1")
hitung_akar(1, -5, 6)

# SKENARIO 2 
print("SKENARIO 2")
hitung_akar(1, -4, 4)

# SKENARIO 3 
print("SKENARIO 3")
hitung_akar(1, 2, 5)

# SKENARIO 4
print("SKENARIO 4")
hitung_akar(3, 5, 7)
