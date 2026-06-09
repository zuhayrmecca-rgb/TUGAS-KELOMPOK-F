# PROGRAM 6: INTERVAL KONFIDENSI PROPORSI
# Mata Kuliah: Algoritma dan Pemrograman Kelas A
# Deskripsi: Menghitung interval konfidensi (1 - alpha) untuk proporsi populasi p.
#            Wajib menggunakan fungsi (modularisasi) dan menangani error jika 
#            proporsi sampel bernilai <= 0 atau > 1.

hitung_interval_konfidensi <- function(p_topi, alpha, n) {
  # Validasi input proporsi sampel sesuai ketentuan soal (kondisi khusus)
  if (is.na(p_topi) || p_topi <= 0 || p_topi > 1) {
    cat("\n[ERROR] Proporsi sampel yang dimasukkan tidak valid!\n")
    cat("-> Proporsi sampel (p^) harus bernilai lebih besar dari 0 dan kurang dari atau sama dengan 1.\n")
    return()
  }
  
  # Validasi ukuran sampel n
  if (is.na(n) || n <= 0) {
    cat("\n[ERROR] Ukuran sampel (n) tidak valid!\n")
    cat("-> Ukuran sampel harus berupa bilangan bulat positif.\n")
    return()
  }
  
  # Menentukan nilai z berdasarkan nilai tingkat signifikansi alpha
  # z = 1.645 untuk alpha = 10% (0.10)
  # z = 1.96 untuk alpha = 5% (0.05)
  if (is.na(alpha)) {
    cat("\n[ERROR] Pilihan tingkat signifikansi alpha tidak boleh kosong!\n")
    return()
  } else if (abs(alpha - 0.10) < 1e-5 || abs(alpha - 10) < 1e-5) {
    z <- 1.645
    alpha_persen <- "10%"
  } else if (abs(alpha - 0.05) < 1e-5 || abs(alpha - 5) < 1e-5) {
    z <- 1.96
    alpha_persen <- "5%"
  } else {
    cat("\n[ERROR] Pilihan tingkat signifikansi alpha tidak didukung!\n")
    cat("-> Gunakan nilai 0.05 (untuk 5%) atau 0.10 (untuk 10%).\n")
    return()
  }
  
  # Perhitungan Margin of Error (ME)
  # Rumus: z * sqrt( (p_topi * (1 - p_topi)) / n )
  standard_error <- sqrt((p_topi * (1 - p_topi)) / n)
  margin_error <- z * standard_error
  
  # Menghitung batas bawah (lower bound) dan batas atas (upper bound)
  batas_bawah <- p_topi - margin_error
  batas_atas <- p_topi + margin_error
  
  # Menampilkan hasil perhitungan dengan format rapi dan presisi desimal
  cat("\n=============================================\n")
  cat("           HASIL ESTIMASI INTERVAL\n")
  cat("=============================================\n")
  cat(sprintf("Proporsi Sampel (p^)  : %.4f\n", p_topi))
  cat(sprintf("Tingkat Signifikansi  : %s (z = %.3f)\n", alpha_percent = alpha_persen, z))
  cat(sprintf("Ukuran Sampel (n)     : %d\n", as.integer(n)))
  cat(sprintf("Margin of Error       : %.4f\n", margin_error))
  cat("---------------------------------------------\n")
  cat(sprintf("Batas Bawah           : %.4f\n", batas_bawah))
  cat(sprintf("Batas Atas            : %.4f\n", batas_atas))
  cat(sprintf("Interval Konfidensi   : %.4f < p < %.4f\n", batas_bawah, batas_atas))
  cat("=============================================\n")
}

main <- function() {
  cat("=============================================\n")
  cat(" PROGRAM ESTIMASI INTERVAL KONFIDENSI PROPORSI\n")
  cat("=============================================\n")
  
  # Menggunakan tryCatch untuk menangani jika user memasukkan karakter bukan angka
  tryCatch({
    # Membaca data input numerik menggunakan metode scan() yang anti-glitch
    cat("Masukkan proporsi sampel (p^)                 : ")
    p_sampel <- scan(n = 1, quiet = TRUE)
    
    cat("Masukkan alpha (0.05 untuk 5%, 0.10 untuk 10%): ")
    alpha_input <- scan(n = 1, quiet = TRUE)
    
    cat("Masukkan ukuran sampel (n)                    : ")
    n_sampel <- scan(n = 1, quiet = TRUE)
    
    # Validasi jika input kosong / ditekan enter tanpa angka
    if (length(p_sampel) == 0 || length(alpha_input) == 0 || length(n_sampel) == 0) {
      cat("\n[ERROR] Input tidak boleh kosong!\n")
      return()
    }
    
    # Konversi tipe data agar sesuai peruntukannya
    p_sampel    <- as.numeric(p_sampel)
    alpha_input <- as.numeric(alpha_input)
    n_sampel    <- as.integer(n_sampel)
    
    # Memanggil fungsi utama perhitungan
    hitung_interval_konfidensi(p_sampel, alpha_input, n_sampel)
    
  }, error = function(e) {
    cat("\n[ERROR] Input yang dimasukkan harus berupa karakter numerik (angka)!\n")
  })
}

# Mengeksekusi blok alur program utama (Main)
main()
