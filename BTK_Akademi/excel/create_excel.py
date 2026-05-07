import pandas as pd

data = {
    "Kişi": ["Kubilay"]*12,
    "No": list(range(1,13)),
    "Gün": ["Pazartesi","Salı","Çarşamba","Perşembe","Cuma","Cumartesi","Pazar","Pazartesi","Salı","Çarşamba","Perşembe","Cuma"],
    "Ay": ["Ocak","Şubat","Mart","Nisan","Mayıs","Haziran","Temmuz","Ağustos","Eylül","Ekim","Kasım","Aralık"],
    "Ay Kısaltma": ["Oca","Şub","Mar","Nis","May","Haz","Tem","Ağu","Eyl","Eki","Kas","Ara"],
    "Ürünler": [
        "Defter, Silgi, Kitap, Çanta, Defter, Kalem",
        "Kalem",
        "Silgi, Çanta, Çanta",
        "Kitap, Defter, Çanta",
        "Çanta, Kalem, Çanta",
        "Defter, Silgi, Çanta",
        "Kitap, Çanta",
        "Çanta, Çanta",
        "Defter, Çanta",
        "Kalem, Çanta",
        "Silgi, Çanta",
        "<empty-block/>"
    ]
}

df = pd.DataFrame(data)
df.to_excel("kubilay_urunler.xlsx", index=False)
print("Excel dosyası oluşturuldu: kubilay_urunler.xlsx")