# PROGRAM 5: KLASIFIKASI CLUSTER 3 DIMENSI
# FUNGSI
cluster <- function(x, y, z) {
  if (!is.numeric(x) || !is.numeric(y) || !is.numeric(z)) {
    cat("STATUS: TIDAK VALID\n")
    return()
  }
  # Pusat cluster
  A <- c(2, 1, 3)
  B <- c(1, -4, 6)
  C <- c(-2, 3, -2)
  
  jA <- sqrt((x-A[1])^2 + (y-A[2])^2 + (z-A[3])^2)
  jB <- sqrt((x-B[1])^2 + (y-B[2])^2 + (z-B[3])^2)
  jC <- sqrt((x-C[1])^2 + (y-C[2])^2 + (z-C[3])^2)
  
  cat("Jarak ke A:", sprintf("%.3f", jA), "\n")
  cat("Jarak ke B:", sprintf("%.3f", jB), "\n")
  cat("Jarak ke C:", sprintf("%.3f", jC), "\n")
  
  # Tentukan cluster
  if (jA <= jB && jA <= jC) {
    cat("STATUS: VALID - CLUSTER A\n")
  } else if (jB <= jA && jB <= jC) {
    cat("STATUS: VALID - CLUSTER B\n")
  } else {
    cat("STATUS: VALID - CLUSTER C\n")
  }
}
# SKENARIO 1 (Titik U:0, 0, 0 )
cluster(0, 0, 0)

# SKENARIO 2 (Titik U:1, -4, 6)
cluster(1, -4, 6)

# SKENARIO 3 (Titik U:a, b, c)
cluster("a", "b", "c")

#SKENARIO 4 (Titik U:,1 b, 5)
cluster(1, "b", 5)
