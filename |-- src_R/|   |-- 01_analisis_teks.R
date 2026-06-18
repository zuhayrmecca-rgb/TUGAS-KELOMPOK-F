# PROGRAM 1: ANALISIS TEKS
# FUNGSI 
hitung <- function(teks) {
  if (teks == "" || !grepl("\\.", teks)) {
    cat("STATUS: TIDAK VALID\n")
    return()
  }
  kata <- unlist(strsplit(teks, "\\s+"))
  kata <- kata[kata != ""]
  jumlah_kata <- length(kata)
  kalimat <- unlist(strsplit(teks, "\\."))
  kalimat <- kalimat[kalimat != ""]
  jumlah_kalimat <- length(kalimat)
  cat("STATUS : VALID","\n")
  cat("Jumlah kata:", jumlah_kata, "\n")
  cat("Jumlah kalimat:", jumlah_kalimat, "\n")
  cat("Teks tersebut memuat",jumlah_kalimat,"kalimat dan memuat",jumlah_kata,"kata.\n")
}
# PENGUJIAN
#SKENARIO 1 
teks1 <- "Media sosial atau disebut juga dengan jejaring sosial, seperti Facebook, Twitter, Instagram, dan masih banyak lagi ternyata tidak hanya digunakan sebagai tempat berkumpul atau berbagi di dunia maya. Namun, media sosial kini juga bisa dimanfaatkan sebagai media untuk mengembangkan sebuah bisnis. Saat ini telah banyak para pengusaha yang beralih ke media sosial dalam memasarkan produk mereka baik barang ataupun jasa. Beralihnya para pelaku bisnis ke media ini dikarenakan jejaring sosial memiliki manfaat yang sangat banyak bagi usaha bisnis. Berikut ini adalah alasan mengapa jejaring sosial bisa menjadi alat promosi yang paling efektif."
hitung(teks1)

#SKENARIO 2 
teks2 <- "Fenomena ini pada dasarnya menunjukkan adanya korelasi yang sangat kuat antara kebijakan makro yang diterapkan oleh pemerintah dengan dinamika kesejahteraan masyarakat di tingkat akar rumput. Ketika regulasi tidak dibarengi dengan pengawasan yang ketat dan inklusif, maka implikasi negatif seperti ketimpangan ekonomi dan disintegrasi sosial menjadi konsekuensi logis yang tidak dapat dihindari. Oleh karena itu, diperlukan sebuah pendekatan holistik yang tidak hanya berfokus pada pertumbuhan angka secara statistik semata, melainkan juga harus menyentuh aspek pemerataan distribusi sumber daya serta penguatan kapasitas sumber daya manusia secara berkelanjutan agar mampu menghadapi tantangan global yang semakin kompleks."
hitung(teks2)

#SKENARIO 3 
teks3 <-"Hari ini cuaca sangat cerah dan matahari bersinar terang angin bertiup sepoi-sepoi membuat suasana menjadi lebih nyaman untuk beraktivitas di luar ruangan"
hitung(teks3)

#SKENARIO 4
teks4 <- "Menjaga kesehatan tubuh sangat penting bagi setiap orang. Olahraga secara teratur dapat meningkatkan sistem kekebalan tubuh. Selain itu, konsumsi makanan bergizi juga berperan besar dalam menjaga kesehatan. Tidur yang cukup setiap hari juga tidak kalah pentingnya."
hitung(teks4)

teks5<-"..."
hitung(teks5)

#PROGRAM 2
# Membuat objek string K1 sampai K4
K1 <- " Saya tak 'kan menyerah."
K2 <- " Ia berkata, \"Aku menyayangimu.\""
K3 <- " Coba jelaskan pengertian 'cross-validation' dalam Machine Learning!"
K4 <- " Surat keputusan itu bernomor 62/UN.34/19/2023."

# Catatan: Fungsi print() di R secara bawaan akan menampilkan nomor indeks [1] dan tanda petik.
# Jika ingin hasilnya bersih persis seperti di gambar, gunakan fungsi cat() dengan baris baru (\n):
cat(K1, "\n")
cat(K2, "\n")
cat(K3, "\n")
cat(K4, "\n")


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

#SKENARIO 4 (Akar Imajiner)
hitung_akar(3,5,7)

# PROGRAM 4: PENGOLAHAN NIP ASN
# FUNGSI
olah_nip <- function(nip) {
  # Validasi panjang NIP
  if (nchar(nip) < 8) {
    cat("STATUS: TIDAK VALID - NIP terlalu pendek\n")
    return()
  }
  # Ambil tahun, bulan, tanggal
  tahun <- substr(nip, 1, 4)
  bulan_kode <- substr(nip, 5, 6)
  tanggal <- substr(nip, 7, 8)
  
  # Konversi bulan kode ke nama bulan
  if (bulan_kode == "01") { bulan <- "Januari"
  } else if (bulan_kode == "02") { bulan <- "Februari"
  } else if (bulan_kode == "03") { bulan <- "Maret"
  } else if (bulan_kode == "04") { bulan <- "April"
  } else if (bulan_kode == "05") { bulan <- "Mei"
  } else if (bulan_kode == "06") { bulan <- "Juni"
  } else if (bulan_kode == "07") { bulan <- "Juli"
  } else if (bulan_kode == "08") { bulan <- "Agustus"
  } else if (bulan_kode == "09") { bulan <- "September"
  } else if (bulan_kode == "10") { bulan <- "Oktober"
  } else if (bulan_kode == "11") { bulan <- "November"
  } else if (bulan_kode == "12") { bulan <- "Desember"
  } else { 
    cat("STATUS: TIDAK VALID - Kode bulan salah\n")
    return()
  }
  # Bersihkan tanggal (hilangkan angka 0 di depan)
  tanggal_bersih <- as.integer(tanggal)
  cat("STATUS: VALID\n")
  cat("Tanggal Lahir:", tanggal_bersih, bulan, tahun, "\n")
}
# SKENARIO 1 
olah_nip("199301212019031010")

# SKENARIO 2 
olah_nip("199903272025062013")

# SKENARIO 3 
olah_nip("1993")

# SKENARIO 4
olah_nip("199313212019031010")

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

#SKENARIO 4
interval(0.8,0.10,50)
