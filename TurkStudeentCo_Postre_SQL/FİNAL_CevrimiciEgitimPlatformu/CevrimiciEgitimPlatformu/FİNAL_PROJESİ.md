# TURK STUDENT COMMUNITY

# PostgreSQL ile Çevrimiçi Eğitim Platformu Veritabanı Tasarımı Projesi

Bu projede, PostgreSQL veritabanı yönetim sistemini kullanarak bir **Çevrimiçi Eğitim Platformu** için veri tabanı kuracaksınız.  
Bu platformda üyeler kayıt olabilecek, eğitimlere katılabilecek, bu eğitimlerden sertifika kazanabilecek ve kullanıcılar blog tarafında paylaşım yaparak kendilerine ait profil sayfalarında seviye atlayabileceklerdir.  
Proje, veritabanı tasarımı prensiplerini ve PostgreSQL kullanımını pratik bir senaryo üzerinden deneyimlemenizi amaçlamaktadır.

---

## 1. Veritabanı Şeması Tasarımı

Aşağıdaki temel işlevleri destekleyecek tablolar tasarlayın:

**I. Üyeler (Members)**  
- Kullanıcı adı (VARCHAR(50), UK)  
- E-posta (VARCHAR(100), UK)  
- Şifre (VARCHAR(255))  
- Kayıt tarihi (TIMESTAMP)  
- Ad (VARCHAR(50))  
- Soyad (VARCHAR(50))  
- PK: INTEGER veya BIGINT  

**II. Eğitimler (Courses)**  
- Adı (VARCHAR(200))  
- Açıklaması (TEXT)  
- Başlangıç tarihi (DATE)  
- Bitiş tarihi (DATE)  
- Eğitmen bilgisi (VARCHAR(100))  
- PK: INTEGER veya BIGINT  

**III. Kategoriler (Categories)**  
- Kategori adı (VARCHAR(100))  
- PK: INTEGER veya SMALLINT  
- Eğitimler ile kategoriler arasında FK ilişkisi  

**IV. Katılımlar (Enrollments)**  
- Kullanıcı FK (INTEGER veya BIGINT)  
- Eğitim FK (INTEGER veya BIGINT)  
- Çok-çok ilişkiyi yöneten ara tablo  
- PK: INTEGER veya BIGINT (otomatik artan ID)  
- Katılım tarihi (TIMESTAMP) (opsiyonel)  

**V. Sertifikalar (Certificates)**  
- Sertifika kodu (VARCHAR(100), UK)  
- Veriliş tarihi (DATE)  
- Birincil Anahtar (PK): INTEGER veya BIGINT  

**VI. Sertifika Atamaları (CertificateAssignments)**  
- Kullanıcı FK (INTEGER veya BIGINT)  
- Sertifika FK (INTEGER veya BIGINT)  
- PK: INTEGER veya BIGINT  
- Alım tarihi (DATE) (opsiyonel)  

**VII. Blog Gönderileri (BlogPosts)**  
- Başlık (VARCHAR(255))  
- İçerik (TEXT)  
- Yayın tarihi (TIMESTAMP)  
- Yazar Bilgisi (INTEGER veya BIGINT FK)
- Yabancı Anahtar (FK)  
- PK(Birincil Anahtar): INTEGER veya BIGINT  

---

## 2. Birincil ve Yabancı Anahtarlar

- Her tabloda bir **Birincil Anahtar (PK)** tanımlayın.  
- Tablolar arasındaki ilişkiler için **Yabancı Anahtarlar (FK)** kullanın.  
- Veri tekliğini sağlamak için **Tekil Anahtarlar (UK)** tanımlayın (örn. kullanıcı adı, e-posta, sertifika kodu).  

---

## 3. SQL Dosyası Oluşturma

- Tüm tabloları, sütun adlarını, veri tiplerini (INTEGER, BIGINT, VARCHAR, TEXT, DATE, TIMESTAMP, FLOAT, BOOLEAN vb.), PK, FK ve UK kısıtlamalarını tanımlayan bir `.sql` dosyası oluşturun.  
- Gerektiğinde **NOT NULL** gibi kısıtlamaları ekleyin.  
- Dosya sıfırdan veritabanı oluşturabilmeli ve ilişkileri kurabilmelidir.  

---

## 4. Genel Şema Ekran Resmi

- Tabloları ve aralarındaki PK/FK ilişkilerini görsel olarak gösteren bir şema diyagramı hazırlayın.  
- Şemada sütun adlarını ve veri tiplerini de göstermeye çalışın.  

---

## 5. GitHub Deposu Oluşturma

- `.sql` dosyasını ve şema ekran resmini içeren bir GitHub reposu oluşturun.  
- Repo **public** hale getirilmeli.  
- Teslim tarihi: **25.04.2025 - 23:59**  
- Teslim formu: [Google Form](https://forms.gle/PSSWr4LD3ya7Z1W88)  

---

## 6. Değerlendirme Kriterleri

1. Veritabanı tasarımının doğruluğu ve tutarlılığı  
2. İhtiyaçlara uygun tabloların ve ilişkilerin modellenmesi  
3. PK, FK ve UK kısıtlamalarının doğru kullanımı  
4. Sütunlar için uygun veri tiplerinin seçilmesi  
5. `.sql` dosyasının hatasız çalışması  
6. Şemanın anlaşılır ve doğru görselleştirilmesi  
7. GitHub kullanımının doğru olması (repo oluşturma, dosya yükleme, public yapma)  

---

**Başarılar dileriz!**
