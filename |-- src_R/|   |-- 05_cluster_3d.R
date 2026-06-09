#PROGRAM 5 KLASIFIKASI CLUSTER 3 DIMENSI 
#Menentukan koordinat pusat cluster tetap
A <- c(2, 1, 3)
B <- c(1, -4, 6)
C <- c(-2, 3, -2)

#Koordinat titik U (Vektor 3 elemen sebagai representasi tuple)
# Ubah nilai di bawah ini untuk menguji titik koordinat lain
U <- c(0, 0, 0) 
cat("Koordinat titik U yang diuji: (", paste(U, collapse=", "), ")\n\n")

#Proses Perhitungan Jarak Euclidean ke setiap cluster
jA <- sqrt((U[1] - A[1])^2 + (U[2] - A[2])^2 + (U[3] - A[3])^2)
jB <- sqrt((U[1] - B[1])^2 + (U[2] - B[2])^2 + (U[3] - B[3])^2)
jC <- sqrt((U[1] - C[1])^2 + (U[2] - C[2])^2 + (U[3] - C[3])^2)

#Memformat tampilan menjadi tepat 3 desimal
jA_fmt <- format(round(jA, 3), nsmall = 3)
jB_fmt <- format(round(jB, 3), nsmall = 3)
jC_fmt <- format(round(jC, 3), nsmall = 3)

#Logika penentuan cluster terdekat
cat("Hasil Analisis Jarak:\n")
cat("Jarak ke Pusat Cluster A : ", jA_fmt, "\n")
cat("Jarak ke Pusat Cluster B : ", jB_fmt, "\n")
cat("Jarak ke Pusat Cluster C : ", jC_fmt, "\n\n")
if (jA <= jB & jA <= jC) {
  cat("Kesimpulan: Titik U tergolong ke dalam CLUSTER A\n")
} else if (jB <= jA & jB <= jC) {
  cat("Kesimpulan: Titik U tergolong ke dalam CLUSTER B\n")
} else {
  cat("Kesimpulan: Titik U tergolong ke dalam CLUSTER C\n")
}

#PROGRAM KLASIFIKASI CLUSTER 3 DIMENSI 
#Menentukan koordinat pusat cluster tetap
A <- c(2, 1, 3)
B <- c(1, -4, 6)
C <- c(-2, 3, -2)

#Koordinat titik U (Vektor 3 elemen sebagai representasi tuple)
# Ubah nilai di bawah ini untuk menguji titik koordinat lain
U <- c(0, 0, 0) 
cat("Koordinat titik U yang diuji: (", paste(U, collapse=", "), ")\n\n")

#Proses Perhitungan Jarak Euclidean ke setiap cluster
jA <- sqrt((U[1] - A[1])^2 + (U[2] - A[2])^2 + (U[3] - A[3])^2)
jB <- sqrt((U[1] - B[1])^2 + (U[2] - B[2])^2 + (U[3] - B[3])^2)
jC <- sqrt((U[1] - C[1])^2 + (U[2] - C[2])^2 + (U[3] - C[3])^2)

#Memformat tampilan menjadi tepat 3 desimal
jA_fmt <- format(round(jA, 3), nsmall = 3)
jB_fmt <- format(round(jB, 3), nsmall = 3)
jC_fmt <- format(round(jC, 3), nsmall = 3)

#Logika penentuan cluster terdekat
cat("Hasil Analisis Jarak:\n")
cat("Jarak ke Pusat Cluster A : ", jA_fmt, "\n")
cat("Jarak ke Pusat Cluster B : ", jB_fmt, "\n")
cat("Jarak ke Pusat Cluster C : ", jC_fmt, "\n\n")
if (jA <= jB & jA <= jC) {
  cat("Kesimpulan: Titik U tergolong ke dalam CLUSTER A\n")
} else if (jB <= jA & jB <= jC) {
  cat("Kesimpulan: Titik U tergolong ke dalam CLUSTER B\n")
} else {
  cat("Kesimpulan: Titik U tergolong ke dalam CLUSTER C\n")
}
