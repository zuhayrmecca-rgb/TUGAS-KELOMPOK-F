# PROGRAM 4: PENGOLAHAN NIP ASN
# Mata Kuliah: Algoritma dan Pemrograman Kelas A
# Referensi Dokumen: "Project Algoritma dan Pemrograman Kelas A.pdf"
main <- function() {
  # Membaca input NIP dari pengguna di konsol
  nip <- readline(prompt = "Masukkan NIP ASN: ")
  nip <- trimws(nip) # Menghilangkan spasi di awal/akhir input
  
  # Validasi: Memastikan panjang input minimal 8 digit
  if (nchar(nip) < 8) {
    cat("Error: NIP yang dimasukkan terlalu pendek (minimal 8 digit pertama).\n")
    return()
  }
  
  # Mengambil substring untuk tahun, bulan, dan tanggal (Catatan: Indeks R dimulai dari 1)
  tahun <- substr(nip, 1, 4)
  bulan_kode <- substr(nip, 5, 6)
  tanggal <- substr(nip, 7, 8)
  
  # Percabangan (Struktur Kondisional) untuk menentukan nama bulan
  if (bulan_kode == "01") {
    bulan <- "Januari"
  } else if (bulan_kode == "02") {
    bulan <- "Februari"
  } else if (bulan_kode == "03") {
    bulan <- "Maret"
  } else if (bulan_kode == "04") {
    bulan <- "April"
  } else if (bulan_kode == "05") {
    bulan <- "Mei"
  } else if (bulan_kode == "06") {
    bulan <- "Juni"
  } else if (bulan_kode == "07") {
    bulan <- "Juli"
  } else if (bulan_kode == "08") {
    bulan <- "Agustus"
  } else if (bulan_kode == "09") {
    bulan <- "September"
  } else if (bulan_kode == "10") {
    bulan <- "Oktober"
  } else if (bulan_kode == "11") {
    bulan <- "November"
  } else if (bulan_kode == "12") {
    bulan <- "Desember"
  } else {
    bulan <- "Tidak Valid"
  }
  
  # Menghilangkan angka 0 di depan tanggal (mengonversi ke integer lalu kembali ke karakter)
  tanggal_num <- as.integer(tanggal)
  if (!is.na(tanggal_num)) {
    tanggal_bersih <- as.character(tanggal_num)
  } else {
    tanggal_bersih <- tanggal
  }
  
  # Menampilkan output hasil pemrosesan ke konsol
  cat(paste("Tanggal Lahir:", tanggal_bersih, bulan, tahun, "\n"))
}
# Mengeksekusi fungsi utama
main()
