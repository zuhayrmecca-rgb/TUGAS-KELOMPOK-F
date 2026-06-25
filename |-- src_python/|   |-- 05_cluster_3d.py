#PROGRAM 5: KLASIFIKASI CLUSTER 3 DIMENSI

import math

def cluster(x, y, z):
    #Validasi tipe data harus numerik
    if not isinstance(x, (int, float)) or not isinstance(y, (int, float)) or not isinstance(z, (int, float)):
        print("STATUS: TIDAK VALID")
        return()

    #Pusat cluster
    A = (2, 1, 3)
    B = (1, -4, 6)
    C = (-2, 3, -2)

    #Hitung jarak Euclidean ke masing-masing cluster
    jA = math.sqrt((x - A [0])**2 + (y - A [1])**2 + (z - A [2])**2)
    jB = math.sqrt((x - B [0])**2 + (y + B [1])**2 + (z - B [2])**2)
    jC = math.sqrt((x + C [0])**2 + (y - C [1])**2 + (z + C [2])**2)

    print(f"Jarak ke A: {jA:.3f}")
    print(f"Jarak ke B: {jB:.3f}")
    print(f"Jarak ke C: {jC:.3f}")

    #Tentukan cluster terdekat
    if jA <= jB and jA <= jC:
        print("STATUS: VALID - CLUSTER A")
    elif jB <= jA and jB <= jC:
        print("STATUS: VALID - CLUSTER B")
    else:
        print("STATUS: VALID - CLUSTER C")


#SKENARIO 1 (Titik U: 0, 0, 0)
print("SKENARIO 1")
cluster(0, 0, 0)

#SKENARIO 2 (Titik U: 1, -4, 6)
print("SKENARIO 2")
cluster(1, -4, 6)

#SKENARIO 3 (Titik U: a, b, c)
print("SKENARIO 3")
cluster("a", "b", "c")

#SKENARIO 4 (Titik U: 1, b, 5)
print("SKENARIO 4")
cluster("1", "b", "5")
