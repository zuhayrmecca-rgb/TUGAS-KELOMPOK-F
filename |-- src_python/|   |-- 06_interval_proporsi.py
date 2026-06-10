#PROGRAM 6: INTERVAL KONFIDENSI PROPORSI

import math

def interval(p, alpha, n):
    #Validasi proporsi (harus antara 0 dan 1)
    if p < 0 or p > 1:
        print("STATUS: TIDAK VALID - Proporsi harus antara 0 dan 1")
        return()
    
    #Validasi n harus positif
    if n <= 0:
        print("STATUS: TIDAK VALID - Ukuran sampel harus positif")
        return()
    
    #Tentukan nilai z berdasarkan alpha
    if alpha == 0.05:
        z = 1.96
    elif alpha == 0.10:
        z = 1.645
    else:
        print("STATUS: TIDAK VALID - Alpha harus 0.05 atau 0.10")
        return()
    
    #Hitung interval
    se = math.sqrt((p * (1 - p)) / n)
    margin = z * se
    bawah = p - margin
    atas = p + margin
    
    #Tampilkan hasil
    print(f"Proporsi sampel (p^) = {p}")
    print(f"Alpha = {alpha}")
    print(f"n = {n}")
    print(f"Interval konfidensi: {bawah:.4f} < p < {atas:.4f}")
    print("STATUS: VALID")


#SKENARIO 1 
print("SKENARIO 1")
interval(0.5, 0.05, 100)

#SKENARIO 2 
print("SKENARIO 2")
interval(0.7, 0.10, 50)

#SKENARIO 3 
print("SKENARIO 3")
interval(1.5, 0.05, 100)

#SKENARIO 4
print("SKENARIO 4")
interval(1, 0.10, 50)
