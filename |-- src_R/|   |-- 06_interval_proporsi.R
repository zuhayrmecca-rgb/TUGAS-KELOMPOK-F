# PROGRAM 6: INTERVAL KONFIDENSI PROPORSI
# FUNGSI
interval <- function(p, alpha, n) {
  # Validasi proporsi (sesuai soal: < 0 atau > 1)
  if (p < 0 || p > 1) {
    cat("STATUS: TIDAK VALID - Proporsi harus antara 0 dan 1\n")
    return()
  }
  # Validasi n harus positif
  if (n <= 0) {
    cat("STATUS: TIDAK VALID - Ukuran sampel harus positif\n")
    return()
  }
  # Tentukan nilai z berdasarkan alpha
  if (alpha == 0.05) {
    z <- 1.96
  } else if (alpha == 0.10) {
    z <- 1.645
  } else {
    cat("STATUS: TIDAK VALID - Alpha harus 0.05 atau 0.10\n")
    return()
  }
  # Hitung interval
  se <- sqrt((p * (1 - p)) / n)
  margin <- z * se
  bawah <- p - margin
  atas <- p + margin
  
  # Tampilkan hasil
  cat("Proporsi sampel (p^) =", p, "\n")
  cat("Alpha =", alpha, "\n")
  cat("n =", n, "\n")
  cat("Interval konfidensi:", round(bawah, 4), "< p <", round(atas, 4), "\n")
  cat("STATUS: VALID\n")
}
# SKENARIO 1 
interval(0.5, 0.05, 100)

# SKENARIO 2 
interval(0.7, 0.10, 50)

# SKENARIO 3 
interval(1.5, 0.05, 100)
