# Ptyhon'da Döngüler,Verimlilik Ve Algoritma Mantığı

Bu notlar, Python'un neden bu kadar güçlü olduğunu ve işleri otomatiğe bağlarken (döngüler) nasıl "havalı" (Pythonic) kod yazılacağını kapsar.

1. **Neden Python? (Hız ve Okunabilirlik)**

Python "interpreted" (yorumlanan) bir dildir; yani kod satır satır okunur.
    * **Geliştirme Hızı:** Bir projeyi C++ veya Java ile yazmak 1 hafta sürüyorsa, Python ile 2-3 günde bitirebilirsin. 
    * **Bellek Yönetimi:** Python'da "Garbage Collection" (Çöp Toplama) vardır; yani belleği senin yerine o temizler, senin pointerlarla falan uğraşmana gerek kalmaz.

2. **Döngülerin Derinlikleri**
**A. While Döngüsü (Koşul Sürdüğü Sürece)**
"Şu olay doğru olduğu sürece dön" demektir. Kaç tur döneceğini bilmediğin (mesela kullanıcı doğru şifreyi yazana kadar) durumlar için idealdir.

**Hocanın Kritik Notu**: Döngü içerisinde şartı değiştirecek (güncelleyecek)  bir şey yazmazsan "sonsuz döngüye" girersin ve bilgisayar kitlenir.

**Örnek: Şifre Deneme Sistemi**
'''bash
    hak =3 
    while hak > 0;
    sifre = input("Şifre:")
    if sifre == "admin123":
    print("Giriş yapıldı!")
    break
    hak -= 1 # Bu satır olmazsa hak hiç azalmaz!
    print(f"Hatalı! Kalan hakkın:{hak}")
'''
### B. For Döngüsü ve Range (Veri Kümesinde Gezmek)
Python'daki 'for' döngüsü bir listenin, metnin veya sözlüğün içinde doğrudan gezebilir. [1, 2]

**Range Kullanımı: 'range(baslangıc, bitis, adim)' şeklinde çalışır. Unutma, 'bitis' değeri dahil değildir!.
* 'range(5)' -> 0, 1, 2, 3, 4
* 'range(2, 10, 2)' -> 2, 4, 6, 8

## 3. Profesyonel Araçlar (Python Way)
Kodu temiz yazmak için şu araçlar önemli:
* **'enumerate()':** Hem elemanın sırasını (index) hem de kendisini verir.
* **'zip()':** İki farklı listeyi birbirine "fermuar" gibi diker, beraber gezmeni sağlar.
* **'List Comprehensions':** 5 satırlık döngüyü tek satıra indiriri.[3, 4]
    * Örnek: 'kareler = [x**2 for x in range(18) if x % 2 == 0]' (Sadece çiftlerin karesini al ve listele).

## 4. Algoritma Hızı (Big 0 Notasyonu)
Yazdığın kodun ne kadar "kaliteli" olduğunu hızı belirler [5, 6]:
* **0(1):** En hızlısı. Veri ne kadar artarsa artsın hız değişmez.
* **0(n):** Doğrusal. Tek bir döngü varsa hız veriyle doğru orantılıdır.
* **0(n²):* Tehlikeli. İç içe iki döngü demektir; veri 10 kat artarsa süre 100 kat artar. [6, 7]
