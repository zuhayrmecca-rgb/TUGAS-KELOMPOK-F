# PROGRAM 1: ANALISIS TEKS
# FUNGSI 
hitung <- function(teks) {
  # Cek valid: harus ada titik dan tidak boleh kosong
  if (teks == "" || !grepl("\\.", teks)) {
    cat("STATUS: TIDAK VALID\n")
    return()
  }
  # Jika valid, hitung kata dan kalimat
  kata <- unlist(strsplit(teks, " "))
  jml_kata <- length(kata)
  kalimat <- unlist(strsplit(teks, "\\."))
  kalimat <- kalimat[kalimat != ""]
  jml_kalimat <- length(kalimat)
  cat("STATUS: VALID\n")
  cat("Jumlah kata:", jml_kata, "\n")
  cat("Jumlah kalimat:", jml_kalimat, "\n")
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

#Skenario 4
teks4 <- "Menjaga kesehatan tubuh sangat penting bagi setiap orang. Olahraga secara teratur dapat meningkatkan sistem kekebalan tubuh. Selain itu, konsumsi makanan bergizi juga berperan besar dalam menjaga kesehatan. Tidur yang cukup setiap hari juga tidak kalah pentingnya."
hitung(teks4) 
