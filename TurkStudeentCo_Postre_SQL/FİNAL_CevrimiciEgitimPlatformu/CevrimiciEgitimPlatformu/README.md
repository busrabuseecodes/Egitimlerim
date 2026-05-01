# 🎓 SQL Eğitim Platformu Veritabanı Projesi | PostgreSQL

Merhaba! Bu proje, üniversite SQL dersim için hazırladığım, **gerçekçi ve işlevsel bir çevrimiçi eğitim platformu veritabanı modelidir**. Amacım sadece ödev yapmak değil, SQL'de derinleşmek, ilişkisel veritabanlarının mantığını kavramak ve gerçek dünya senaryolarına uygun bir yapı kurmaktı.

---

## 🚀 Proje Amacı ve Kapsamı

Bu veritabanı, kullanıcıların (üyelerin) kayıt olduğu, kurslara katılıp tamamladığı, sertifikalar aldığı, ayrıca blog yazılarıyla bilgi paylaştığı bir eğitim platformunu temsil ediyor. Proje, aşağıdaki gereksinimleri karşılamak üzere tasarlandı:

- **Veri bütünlüğü** ve tutarlılık  
- **Kapsamlı tablo ilişkileri** (üyeler, kurslar, kategoriler, sertifikalar, bloglar)  
- **Güvenlik ve kısıtlamalar** ile yanlış veri girişinin önlenmesi  
- **Gerçek hayat kullanımına uygun mantıksal tasarım**  

---

## 🗃️ Tablolar ve İşlevleri

### 1. `members` (Üyeler)
Kullanıcıların temel bilgilerini içerir: kullanıcı adı, e-posta, kayıt tarihi gibi.  
- `username` ve `email` alanları benzersizdir.  
- `join_date` otomatik olarak kayıt tarihini alır.

### 2. `categories` (Kategoriler)
Platformdaki kurslar belli kategorilere ayrılır: programlama, tasarım gibi.  
- Her kategori benzersiz isim taşır.

### 3. `courses` (Kurslar)
Kursların temel bilgileri, hangi kategoriye ait olduğu, başlangıç ve bitiş tarihleri gibi detaylar yer alır.  
- Tarihler mantıksal olarak kontrol edilir (`CHECK` kısıtlaması ile).  
- Kategori dış anahtarı ile bağlanır.

### 4. `enrollments` (Kursa Kayıtlar)
Hangi üyenin hangi kursa kayıtlı olduğunu gösterir.  
- Aynı üye, aynı kursa tekrar kaydolamaz (`UNIQUE` kısıtlaması).

### 5. `certificates` (Sertifikalar)
Kurslara ait sertifikalar burada tanımlanır.  
- Sertifika kodları benzersizdir.

### 6. `certificate_assignments` (Sertifika Dağıtımı)
Üyelere verilen sertifikalar ilişkilendirilir.  
- Üye ve sertifika dış anahtarlarıyla bağlanır.

### 7. `blog_posts` (Blog Yazıları)
Üyelerin paylaştığı yazılar burada tutulur.  
- Her yazı bir üyeye aittir, ancak üye silinse bile yazılar silinmez (veri kaybını önlemek için).

---

## 🔐 Veri Bütünlüğü ve Kısıtlamalar

Projenin temel taşlarından biri verinin doğru ve tutarlı kalması. Bunun için:

- **PRIMARY KEY** her tabloda kayıtları benzersiz tanımlar.  
- **FOREIGN KEY** ile tablolar arası bağ kurulur, tutarsız kayıtlar engellenir.  
- **UNIQUE** alanlar tekrar eden kayıtların önüne geçer.  
- **NOT NULL** zorunlu alanların boş kalmasını engeller.  
- **CHECK** kısıtlamaları tarihlerin ve değerlerin mantıklı olmasını sağlar.  
- **ON DELETE CASCADE** ve **ON DELETE SET NULL** seçenekleriyle veri tutarlılığı korunur.

---

## 📁 Proje Dosyaları

- `create_tables.sql`: Tabloların oluşturulması için SQL komutları  
- `insert_data.sql`: Örnek veri ekleme betiği  
- `reset_database.sql`: Veritabanını sıfırlama ve temiz başlangıç sağlama  
- `queries.sql`: Projede kullanılan örnek sorgular ve testler  

---

## 💡 Öğrenme Süreci ve Kazanımlar

Bu proje boyunca, SQL’in temel ve ileri kavramlarını pekiştirdim:  

- Veri tipi seçimi ve kısıtlamaların önemi  
- İlişkisel veritabanı modelleme teknikleri  
- Karmaşık sorgular ve performans açısından optimizasyonlar  
- Gerçek dünya senaryolarına uygun güvenli veri yönetimi  

---

## 👩‍💻 Geliştirici Hakkında

Bu proje sadece bir ders ödevi değil, aynı zamanda veri yapıları ve ilişkisel modelleme konusunda derinlemesine öğrenme fırsatıydı. SQL’i gerçek anlamda “kavradım” diyebileceğim nadir projelerden biri oldu. Beni takip etmek ve projelerimi incelemek için:

[![GitHub](https://img.shields.io/badge/GitHub-000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/busrabuseecodes)  
[![LinkedIn](https://img.shields.io/badge/LinkedIn-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/busrabuseecodes/)  
 

---

## ⚠️ Dikkat

Bu proje, eğitim amacıyla hazırlanmış bir örnektir. Gerçek bir platformda kullanılmadan önce güvenlik, ölçeklenebilirlik ve performans açısından detaylı test ve geliştirmeler gerektirir.

---

# İyi kodlamalar ve verimli öğrenmeler! 🚀