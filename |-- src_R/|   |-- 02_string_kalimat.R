# PROGRAM 2: STRING KALIMAT
# FUNGSI
cetak <- function(nama, teks) {
  if (teks == "" || grepl("\\$|\\^|\\=|\\*|`|~", teks)) {
    cat(nama, ": ", teks, " - TIDAK VALID\n", sep="")
  } else {
    cat(nama, ": ", teks, " - VALID\n", sep="")
  }
}
# SKENARIO 1 
cetak("K1", "Saya tak 'kan menyerah.")
cetak("K2", "Ia berkata,'Aku menyayangimu.'")
cetak("K3", "Coba jelaskan pengertian 'cross-validation' dalam Machine Learning!")
cetak("K4", "Surat keputusan itu bernomor 62/UN.34/19/2023.")

# SKENARIO 2 
cetak("K1", "Wahai para insan pengembara, janganlah kau ragu tuk melangkah.")
cetak("K2", "Dia berbisik,'Rahasia alam semesta tersimpan dalam hati yang sunyi.'")
cetak("K3", "Di balik kabut 'senja' ada sejuta mimpi yang belum tertidur.")
cetak("K4", "Puisi itu lahir dari jiwa yang luka: 22/04/1999 sebagai saksi bisu.")

# SKENARIO 3 
cetak("K1", "Harga barang itu $100.")
cetak("K2", "Hasilnya 5^2 = 25.")
cetak("K3", "Rumus luas persegi adalah s*s.")
cetak("K4", "Dia berkata *halo* semua.")
