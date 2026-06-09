# --- PROGRAM 1: ANALISIS TEKS ---

def hitung(teks):
    # Cek validasi: teks harus memiliki titik dan tidak boleh kosong
    if teks == "" or "." not in teks:
        print("STATUS: TIDAK VALID")
        return
    
    # Jika valid, hitung jumlah kata
    kata_list = teks.split(" ")
    jml_kata = len(kata_list)
    
    # Menghitung jumlah kalimat
    kalimat_list = teks.split(".")
    kalimat_list = [k for k in kalimat_list if k != ""]
    jml_kalimat = len(kalimat_list)
    
    # Menampilkan hasil
    print("STATUS: VALID")
    print(f"Jumlah kata: {jml_kata}")
    print(f"Jumlah kalimat: {jml_kalimat}")


# SKENARIO 1
print("\n--- SKENARIO 1 ---")
teks1 = "Media sosial atau disebut juga dengan jejaring sosial, seperti Facebook, Twitter, Instagram, dan masih banyak lagi ternyata tidak hanya digunakan sebagai tempat berkumpul atau berbagi di dunia maya. Namun, media sosial kini juga bisa dimanfaatkan sebagai media untuk mengembangkan sebuah bisnis. Saat ini telah banyak para pengusaha yang beralih ke media sosial dalam memasarkan produk mereka baik barang ataupun jasa. Beralihnya para pelaku bisnis ke media ini dikarenakan jejaring sosial memiliki manfaat yang sangat banyak bagi usaha bisnis. Berikut ini adalah alasan mengapa jejaring sosial bisa menjadi alat promosi yang paling efektif."
hitung(teks1)

# SKENARIO 2
print("\n--- SKENARIO 2 ---")
teks2 = "Fenomena ini pada dasarnya menunjukkan adanya korelasi yang sangat kuat antara kebijakan makro yang diterapkan oleh pemerintah dengan dinamika kesejahteraan masyarakat di tingkat akar rumput. Ketika regulasi tidak dibarengi dengan pengawasan yang ketat dan inklusif, maka implikasi negatif seperti ketimpangan ekonomi dan disintegrasi sosial menjadi konsekuensi logis yang tidak dapat dihindari. Oleh karena itu, diperlukan sebuah pendekatan holistik yang tidak hanya berfokus pada pertumbuhan angka secara statistik semata, melainkan juga harus menyentuh aspek pemerataan distribusi sumber daya serta penguatan kapasitas sumber daya manusia secara berkelanjutan agar mampu menghadapi tantangan global yang semakin kompleks."
hitung(teks2)

# SKENARIO 3
print("\n--- SKENARIO 3 ---")
teks3 = "Hari ini cuaca sangat cerah dan matahari bersinar terang angin bertiup sepoi-sepoi membuat suasana menjadi lebih nyaman untuk beraktivitas di luar ruangan"
hitung(teks3)
