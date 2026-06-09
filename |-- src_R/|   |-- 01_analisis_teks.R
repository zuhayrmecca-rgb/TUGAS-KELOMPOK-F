
# PROGRAM 1 : ANALISIS TEKS
# Menyimpan teks
teks <- "Media sosial atau disebut juga dengan jejaring sosial, seperti Facebook, Twitter, Instagram, dan masih banyak lagi ternyata tidak hanya digunakan sebagai tempat berkumpul atau berbagi di dunia maya. Namun, media sosial kini juga bisa dimanfaatkan sebagai media untuk mengembangkan sebuah bisnis. Saat ini telah banyak para pengusaha yang beralih ke media sosial dalam memasarkan produk mereka baik barang ataupun jasa. Beralihnya para pelaku bisnis ke media ini dikarenakan jejaring sosial memiliki manfaat yang sangat banyak bagi usaha bisnis. Berikut ini adalah alasan mengapa jejaring sosial bisa menjadi alat promosi yang paling efektif."

# Menghitung jumlah kata
kata <- unlist(strsplit(teks, " "))
jumlah_kata <- length(kata)

# Menghitung jumlah kalimat berdasarkan banyaknya tanda titik
kalimat <- unlist(strsplit(teks, "\\."))
jumlah_kalimat <- length(kalimat)

# Menampilkan hasil
cat("HASIL ANALISIS TEKS\n")
cat("Jumlah kalimat :", jumlah_kalimat, "\n")
cat("Jumlah kata    :", jumlah_kata, "\n")
cat("Teks tersebuat memuat",jumlah_kalimat,"kalimat dan memuat",jumlah_kata,"kata.","\n")
