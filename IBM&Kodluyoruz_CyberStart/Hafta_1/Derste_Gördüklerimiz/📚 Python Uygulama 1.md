Soru:

Aşağıdaki kodun çıktısını yazın.

![alt text](image.png)

i = 2
for x in range(i):
    i += 1
print(i)
print(i)

Çıktı: 
3
3
4
4

Neden Böyle Oldu? (Adım Adım)

Kodun çalışma mantığını anlamak için Python'ın range() fonksiyonunu nasıl kullandığına bakmalıyız. Python'da for döngüsü başladığında, range(i) ifadesi sadece bir kez değerlendirilir.

Başlangıç: "i = 2" olarak belirlenir.

Döngü Kurulumu: for x in range(2): komutu çalışır. Python burada bir liste gibi düşünebileceğimiz [0, 1] dizisini oluşturur. Döngü toplam 2 kez dönecektir.

1. Tur (x = 0):

i += 1 satırı i değerini 3 yapar.

print(i) iki kez çalışır ve ekrana 3 ve 3 yazar.

2. Tur (x = 1):

i += 1 satırı i değerini 4 yapar.

print(i) iki kez çalışır ve ekrana 4 ve 4 yazar.

Bitiş: Döngü 2 kez döndüğü için sona erer.

Kritik Nokta: Döngü içindeki i += 1 işlemi, döngünün kaç kez döneceğini (yani range(i) kısmını) değiştirmez. Çünkü range objesi döngü en başında bir kez oluşturulmuştur.