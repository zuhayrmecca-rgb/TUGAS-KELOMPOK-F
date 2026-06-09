#PROGRAM 4: PENGOLAHAN NIP ASN

def olah_nip(nip):
    # Validasi panjang NIP
    if len(nip) < 8:
        print("STATUS: TIDAK VALID - NIP terlalu pendek")
        return
    
    # Ambil tahun, bulan, tanggal (8 digit pertama)
    tahun = nip[0:4]
    bulan_kode = nip[4:6]
    tanggal = nip[6:8]
    
    # Konversi kode bulan ke nama bulan
    if bulan_kode == "01":
        bulan = "Januari"
    elif bulan_kode == "02":
        bulan = "Februari"
    elif bulan_kode == "03":
        bulan = "Maret"
    elif bulan_kode == "04":
        bulan = "April"
    elif bulan_kode == "05":
        bulan = "Mei"
    elif bulan_kode == "06":
        bulan = "Juni"
    elif bulan_kode == "07":
        bulan = "Juli"
    elif bulan_kode == "08":
        bulan = "Agustus"
    elif bulan_kode == "09":
        bulan = "September"
    elif bulan_kode == "10":
        bulan = "Oktober"
    elif bulan_kode == "11":
        bulan = "November"
    elif bulan_kode == "12":
        bulan = "Desember"
    else:
        print("STATUS: TIDAK VALID - Kode bulan salah")
        return
    
    # Bersihkan tanggal (hilangkan angka 0 di depan)
    tanggal_bersih = int(tanggal)
    
    print("STATUS: VALID")
    print(f"Tanggal Lahir: {tanggal_bersih} {bulan} {tahun}")


# SKENARIO 1 
print("SKENARIO 1")
olah_nip("199301212019031010")

# SKENARIO 2 
print("SKENARIO 2")
olah_nip("199903272025062013")

# SKENARIO 3 
print("SKENARIO 3")
olah_nip("1993")
