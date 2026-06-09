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
