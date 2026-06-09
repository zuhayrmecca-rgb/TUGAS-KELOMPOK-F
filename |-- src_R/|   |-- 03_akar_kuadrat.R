# PROGRAM 3: AKAR PERSAMAAN KUADRAT
# INPUT 
a <- as.numeric(readline("Masukkan nilai a: "))
b <- as.numeric(readline("Masukkan nilai b: "))
c <- as.numeric(readline("Masukkan nilai c: "))

# Membuat fungsi untuk menghitung akar
akar_kuadrat <- function(a, b, c) {
  D <- b^2 - 4 * a * c
  if (D > 0) {
    x1 <- (-b + sqrt(D)) / (2 * a)
    x2 <- (-b - sqrt(D)) / (2 * a)
    return(list(x1 = round(x1, 3), x2 = round(x2, 3), D = D, jenis = "real_berbeda"))
  } else if (D == 0) {
    x <- -b / (2 * a)
    return(list(x1 = round(x, 3), x2 = round(x, 3), D = D, jenis = "real_kembar"))
  } else {
    return(list(D = D, jenis = "imajiner"))
  }
}
# Membuat fungsi untuk mencetak hasil
cetak_akar <- function(a, b, c, hasil) {
  cat("\nPersamaan:", a, "x^2 +", b, "x +", c, "= 0\n")
  cat("Diskriminan (D) =", hasil$D, "\n")
  
  if (hasil$jenis == "real_berbeda") {
    cat("x1 =", hasil$x1, "\n")
    cat("x2 =", hasil$x2, "\n")
  } else if (hasil$jenis == "real_kembar") {
    cat("x1 = x2 =", hasil$x1, "\n")
  } else {
    cat("Persamaan hanya memiliki akar imajiner\n")
  }
}
# CONTOH
a <- 1
b <- -5
c <- 6

hasil <- akar_kuadrat(a, b, c)
cetak_akar(a, b, c, hasil)
