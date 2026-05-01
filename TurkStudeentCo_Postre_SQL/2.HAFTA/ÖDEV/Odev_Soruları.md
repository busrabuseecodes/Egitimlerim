# TURK STUDENT COMMUNITY

## SQL BOOTCAMP İKİNCİ HAFTA ÖDEV SORULARI

### 1. Amaç
Turkstudentco'da veri bilimci olarak ilk gününüzde, size Chinook veritabanından **Invoice** tablosu verildi.  
Bu tabloyu inceledikten sonra kafanızda birkaç soru oluştu ve bu soruları cevaplamak için SQL sorguları yazmanız istendi.  
Bu ödevin amacı, veritabanı sorgulama becerilerinizi geliştirmek ve farklı SQL işlemlerini uygulamanızı sağlamaktır.

---

### 2. Invoice Tablosu (Örnek Veri)

Aşağıdaki tablo, Invoice tablosunun örnek kayıtlarını göstermektedir (tamamı değildir).  
Kolonlar sırasıyla:

- invoice_id  
- customer_id  
- invoice_date  
- billing_address  
- billing_city  
- billing_state  
- billing_country  
- billing_postal_code  
- total  

| invoice_id | customer_id | invoice_date         | billing_address   | billing_city | billing_state | billing_country | billing_postal_code | total |
|------------|-------------|----------------------|------------------|--------------|---------------|-----------------|---------------------|-------|
| 1          | 18          | 2017-01-03 00:00:00 | 627 Broadway     | New York     | NY            | USA             | 10012-2612          | 15.84 |
| 2          | 30          | 2017-01-03 00:00:00 | 230 Elgin Street | Ottawa       | ON            | Canada          | K2P 1L7             | 9.90  |
| 3          | 40          | 2017-01-05 00:00:00 | 8, Rue Hanovre   | Paris        | None          | France          | 75002               | 1.98  |
| 4          | 18          | 2017-01-06 00:00:00 | 627 Broadway     | New York     | NY            | USA             | 10012-2612          | 7.92  |

Not: Bu tablo invoice yapısının örnek bir kısmını göstermektedir; tüm veri setine aşağıdaki bağlantıdan ulaşabilirsiniz:  
[Google Drive](https://drive.google.com/drive/folders/1kwnUOyf311vlW7Vm5XGCvXYE9CTMvOks?usp=sharing)

---

### 3. Sorular

1. Invoice tablosunda, tüm değerleri **NULL** olan kayıtların sayısını bulmanız isteniyor.  
   Bu işlemi tek bir sorgu ile yapmalısınız. Sorguyu yazdıktan sonra, PostgreSQL'in sol alt kısmındaki **Row** sayısını, SQL sorgunuzda yorum satırında belirtmeniz gerekmektedir.

2. Koordinasyondaki kişiler, **Total** değerlerinde bir hata olduğunu belirtiyorlar.  
   Bu değerlerin iki katını görmek ve eski versiyonlarıyla birlikte karşılaştırmak için bir sorgu yazmanız isteniyor.  
   Ayrıca, verilerin daha rahat takip edilebilmesi için, tablonun yeni versiyonuna ait kolona göre büyükten küçüğe sıralama yapılması gerekiyor.

3. **Adres** kolonundaki verileri, soldan 3 karakter ve sağdan 4 karakter alarak birleştirmeniz ve `"Açık Adres"` olarak yazmanız isteniyor.  
   Ayrıca, bu yeni açık adresi **2013 yılı ve 8. ay**'a göre filtrelemeniz gerekiyor.

---

#### 4. Teslim Kuralları ve Şartları

Ödevinizi teslim ederken dikkat etmeniz gerekenler:

1. SQL sorgularınızı ve kısa açıklamalarınızı içeren bir dosya (.txt veya .pdf formatında) hazırlayınız.  
2. Sorgularınızı kendi cümlelerinizle açıklayarak, nasıl çalıştığını belirtiniz.  
3. Ödevde örnek cevaplar veya ipuçları verilmemiştir; konuyu öğrendiğiniz şekilde kendi sorgularınızı oluşturmanız beklenmektedir.  

Son Teslim Tarihi: **18.03.2025 - 23:59**  

Teslim Yeri: [Google Form](https://forms.gle/oDhKSYaHjHYEJ9X17)
