import pandas as pd
import os
import matplotlib.pyplot as plt

file_name = "Görev1-Nicel Veriseti.xlsx"

if os.path.exists(file_name):
    df = pd.read_excel(file_name)
    print("\n--- Excel Başarıyla Okundu ---")
    
    # ---------------------------------------------------------
    # VERİ TEMİZLEME (BU KISIM ÖNEMLİ!)
    # ---------------------------------------------------------
    # 'No' yazan hatalı verileri 'Hayır' ile birleştiriyoruz
    if 'Hane_Beslenme_Eğitimi' in df.columns:
        df['Hane_Beslenme_Eğitimi'] = df['Hane_Beslenme_Eğitimi'].replace({'No': 'Hayır'})
        print("Sistem Mesajı: Veri temizlendi, 'No' değerleri 'Hayır' yapıldı.")
    # ---------------------------------------------------------

    # Grafik Oluşturma
    if 'Hane_Beslenme_Eğitimi' in df.columns:
        print("\n--- Grafik Güncelleniyor ---")
        egitim_sayilari = df['Hane_Beslenme_Eğitimi'].value_counts()
        
        plt.figure(figsize=(8, 6))
        egitim_sayilari.plot(kind='pie', autopct='%1.1f%%', colors=['skyblue', 'lightcoral'])
        
        plt.title('Hane Beslenme Eğitimi Dağılımı (Temizlenmiş Veri)')
        plt.ylabel('')
        
        plt.savefig('beslenme_egitimi_grafigi.png')
        print("BAŞARILI: Temiz grafik 'beslenme_egitimi_grafigi.png' olarak kaydedildi.")
else:
    print(f"Hata: {file_name} bulunamadı!")