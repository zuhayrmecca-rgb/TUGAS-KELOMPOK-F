# PROGRAM 3: AKAR PERSAMAAN KUADRAT
# FUNGSI
hitung_akar <- function(a, b, c) {
  D <- b^2 - 4 * a * c
  if (D > 0) {
    x1 <- (-b + sqrt(D)) / (2 * a)
    x2 <- (-b - sqrt(D)) / (2 * a)
    cat("STATUS: VALID - Akar real berbeda\n")
    cat("Diskriminan (D) =", D, "\n")
    cat("x1 =", sprintf("%.3f", x1), "\n")
    cat("x2 =", sprintf("%.3f", x2), "\n")
  } else if (D == 0) {
    x <- -b / (2 * a)
    cat("STATUS: VALID - Akar real kembar\n")
    cat("Diskriminan (D) =", D, "\n")
    cat("x1 = x2 =", sprintf("%.3f", x), "\n")
  } else {
    cat("STATUS: VALID - Akar imajiner\n")
    cat("Diskriminan (D) =", D, "\n")
    cat("Persamaan hanya memiliki akar imajiner\n")
  }
}
# SKENARIO 1 (Akar real berbeda)
hitung_akar(1, -5, 6)

# SKENARIO 2 (Akar real kembar)
hitung_akar(1, -4, 4)

# SKENARIO 3 (Akar imajiner)
hitung_akar(1, 2, 5)
