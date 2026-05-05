# 🧠 Computational Thinking (Bilgi İşlemsel Düşünce) Rehberi
    Bu döküman, karmaşık problemleri bir bilgisayarın (veya bir yazılımcının) çözebileceği kadar basit parçalara ayırma sanatını anlatır.  
    START DECLARE sayi1, sayi2, ort INPUT sayi1 INPUT sayi2 SET ort = (sayi1 + sayi2) / 2 PRINT ort END

## Giriş 
Bu rehber, **bilgi işlemsel düşüncenin** dört temel bileşenini derinlemesine açıklar: **Decomposition, Pattern Recognition, Abstraction, Algorithm.** Her bölümde tanım, sınıf örneği, nasıl uygulanacağı ve README’ye yazım önerileri yer alır.

## 1. Decomposition — Problemi Parçalara Bölme
- **Tanım**
Decomposition, büyük ve karmaşık bir problemi, tek tek çözülebilecek daha küçük parçalara ayırma yöntemidir. Amaç, her bir alt problemin bağımsız olarak çözülebilir olmasını sağlamaktır.

**Neden önemli?**
* Karmaşıklığı azaltır.
* Paralel çalışma ve görev dağılımı sağlar.
* Hataları izole etmeyi kolaylaştırır.

**Sınıf Örneği (Trafik Işıkları)**
* Parça A: Yeşil ışık ne zaman yanacak?
* Parça B: Sarı ışık ne kadar sürecek?
* Parça C: Kırmızı ışıkta kim geçtiğini nasıl tespit ederiz?

**Uygulama Adımları (README’ye yazarken kullanabileceğin kısa şablon)**
* Problemi ana başlıklara ayır: Girdi, İşleme, Çıktı.
* *Her başlık altında 2–4 alt görev yaz.
* Her alt görevin giriş/çıkışını belirt.

**İpucu**  *
Her alt görevi “tek bir cümleyle” ifade et; eğer bir alt görev hâlâ karmaşıksa, onu tekrar parçala.

## 2. Pattern Recognition — Örüntü Tanıma
**Tanım** 
Pattern Recognition, daha önce karşılaşılan benzer durumları veya tekrar eden yapıları tespit etmektir. Bu sayede çözümde tekrar eden adımlar genelleştirilebilir.

**Neden önemli?**
* Tekrar eden işleri otomatikleştirmeyi sağlar.
* Daha kısa ve daha verimli çözümler üretir.

**Sınıf Örneği (Gauss Toplamı)**
* Gözlem: 1 + 100 = 101
* Gözlem: 2+ 99 = 101
* Gözlem: 3 + 98 =101
* Sonuç: 50 çift vardır; toplam 50 × 101.

**Uygulama Adımları (README’ye yazarken)**
* Veride tekrar eden örüntüleri listele.
* Örüntüyü genelleştir (formül veya kural hâline getir).
* Genelleştirilmiş kuralı algoritmana uygula.

**İpucu**  
Örüntüyü bulduğunda, onu küçük bir test verisiyle doğrula.

## 3. Abstraction — Soyutlama (Gereksizleri Atma)
**Tanım**  
Abstraction, problemi çözmek için gerekli olmayan detayları görmezden gelme ve sadece çözüm için kritik olan bilgileri tutma sürecidir.

**Neden önemli?**
* Karmaşıklığı azaltır.
* Kodun ve algoritmanın daha okunabilir olmasını sağlar.
* Yeniden kullanılabilir bileşenler oluşturur.

**Sınıf Örneği (Kırmızı Işık İhlali Tespiti)**
* Gereksiz detaylar: Aracın rengi, markası, sürücünün adı.
* Önemli bilgiler: Işığın rengi; araç geçti mi?; zaman damgası; plaka.

**Uygulama Adımları (README’ye yazarken)**
* Problemin hangi bilgileri kesinlikle gerektirdiğini belirt.
* Gereksiz görünen tüm alanları “opsiyonel” olarak işaretle.
* Soyutlama katmanları oluştur: Donanım katmanı, algılama katmanı, karar katmanı.

**İpucu**  
Soyutlama yaparken “hangi bilgi olmadan karar veremem?” sorusunu sor.

## 4. Algorithm — Algoritma (Adım Adım Plan)
**Tanım**
Algorithm, belirli bir problemi çözmek için izlenecek kesin, sıralı ve tekrarlanabilir adımlar bütünüdür.

**Neden önemli?**

* Bilgisayara ne yapacağını net olarak söyler.
* Hataları ve eksikleri bulmayı kolaylaştırır.
* Performans ve doğruluk analizine izin verir.

**Sınıf Örneği (Kırmızı Işık İhlali Algoritması)**

1. Işığın rengini oku.
2. Eğer ışık kırmızıysa, araç geçişini algıla.
3. Araç geçtiyse fotoğraf çek; plakayı OCR ile oku.
4. Ceza kaydı oluştur ve veritabanına kaydet.

**Pseudocode Örneği (İki Sayının Ortalaması)**
```jupyter
    START
    DECLARE sayi1, sayi2, ort
    INPUT sayi1
    INPUT sayi2
    SET ort = (sayi1 + sayi2) / 2
    PRINT ort
    END
```
**Uygulama Adımları (README’ye yazarken)**

* Algoritmayı önce sözde kod (pseudocode) ile yaz.
* Ardından akış diyagramı (flowchart) ile görselleştir.
* Son olarak gerçek kodu yaz ve birim testler ekle.

**İpucu** 
Her adımı tek bir eylem cümlesiyle ifade et; “eğer” ve “döngü” durumlarını açıkça belirt.

## 5. Uygulamalı Örnekler ve Kod Parçacıkları

**A. Gauss Toplamı (Adım Adım)**
1. 𝑛 = 100 al.
2. İlk ve son elemanını eşleştir: 1 + 100 = 1001.
3. Bu şekilde  𝑛/2=50 çift elde edilir.
4. Toplam 50 × 101 = 5050.

**B. Python ile İki Sayının Ortalaması (Örnek Kod)**
# Kullanıcıdan iki sayı alıp ortalamasını hesaplayan basit örnek
```pytho
sayi1 = float(input("Birinci sayıyı gir: "))
sayi2 = float(input("İkinci sayıyı gir: "))
ort = (sayi1 + sayi2) / 2
print("Ortalama:", ort)
```
