# Yazılım Geliştirmede Tip Sistemleri ve Teknik Borç: Kapsamlı Çalışma Notları

Bu rapor, modern yazılım dünyasında kodun kalitesini, performansını ve gelecekteki bakım maliyetlerini (teknik borç) belirleyen temel kavramları "Temiz Kod" prensipleri ışığında incelemektedir.

## 1. Tip Sistemlerinin Savaşı: Statik ve Dinamik Karşılaştırması
Programlama dilleri, veriyi nasıl tanımladıklarına göre iki ana kampa ayrılır. Bu seçim, projenin en başından itibaren çalışma hızını ve hata oranını belirler.

**Statik Tipleme (Java, C#, C++, Swift, Rust)**
* **Çalışma Mantığı:** Değişkenlerin tipi (sayı, metin vb.) daha kod yazılırken veya derlenirken belirlenir. Derleyici, yanlış bir eşleşme gördüğünde programı çalıştırmaz.
* **Hata Önleme:** Araştırmalar, statik tiplemenin çalışma zamanında oluşabilecek tip hatalarını %30 ile %50 oranında azalttığını kanıtlamaktadır.
* **Performans:** Bilgisayar ne tür bir veriyle karşılaşacağını önceden bildiği için belleği ve işlemciyi daha verimli kullanır. Özellikle CPU yoğunluklu işlerde statik diller (C++ gibi), dinamik dillerden (Python gibi) 10 ile 100 kat daha hızlı çalışabilir.
* **Araç Desteği:** IDE'ler (kod yazma araçları) tipi bildiği için daha iyi otomatik tamamlama ve güvenli "refactoring" (kodu bozmadan yeniden düzenleme) imkanı sunar.

## Dinamik Tipleme (Python, JavaScript, Ruby, PHP)
- **Çalışma Mantığı:** Tip kontrolü program çalışırken (runtime) yapılır. Değişkenler her türlü veriyi esnekçe tutabilir.
- **Hız ve Esneklik:** Prototip aşamasında geliştiriciye %40-60 oranında hız kazandırabilir. Tip tanımlarıyla uğraşmak gerekmediği için kod daha az ve temiz görünür.
- **Riskler:** Hatalar genellikle program çalıştıktan sonra ortaya çıkar. Bu da "dinamik tipleme vergisi" olarak bilinen, çok daha fazla test yazma zorunluluğunu beraberinde getirir.


| Özellik | Statik Tipleme | Dinamik Tipleme |
| --- | --- | --- |
| **Hata Tespiti** | Kod çalışmadan (**Derleme aşaması**) | Kod çalışırken (**Runtime**) |
| **İşlem Hızı** | Çok Yüksek (Optimize edilmiş) | Daha Düşük (Yorumlayıcı yükü) |
| **Büyük Projeler** | Bakımı daha kolay ve güvenli | Büyüdükçe karmaşıklık artar |

## 2. Generic Programlama: Esneklik ve Güvenliğin Sentezi
Generic yapılar, statik dillerin katı yapısını esnetmek için kullanılan bir "şablon" mekanizmasıdır. Bir algoritmayı her tip için ayrı ayrı yazmak yerine, genel bir taslak oluşturmanızı sağlar. Ancak popüler diller bunu teknik olarak çok farklı uygular:
* **Java ve Tür Silme (Type Erasure):**  Java, generic tipleri derleme bittikten sonra "siler" ve yerlerine genel bir Object koyar. Bu, eski Java sürümleriyle uyumluluk sağlar ama çalışma zamanında tip bilgisinin kaybolmasına neden olur.
*  **C# ve Somutlaştırma (Reification):** C#, generic tip bilgisini çalışma zamanında da korur. Her veri tipi için (özellikle sayısal değer tipleri) özel makine kodu üretir, bu da performansı ciddi oranda artırır.
* **C++ ve Şablonlar (Templates):** Derleyici, her farklı tip kullanımı için kodun kopyasını oluşturur. Bu "kod şişmesine" neden olsa da, inanılmaz bir hız ve optimizasyon sağlar.

**Temiz Kod Uyarısı:** Generic yapılar kod tekrarını (DRY) azaltmak içindir. Eğer yazdığınız generic yapı kodun okunabilirliğini azaltıyor veya hala manuel tip dönüşümü (casting) gerektiriyorsa, bu "Generic Suistimali" (Generics Abuse) olarak adlandırılır.

---

## 3. Teknik Borç: Yazılımın Görünmez Maliyeti

Teknik borç, bir özelliği "hızlı ama kalitesiz" yapmanın sonucunda, gelecekte ödemek zorunda kalacağınız "faiz"dir.
- **Maliyet Katlanması:** İlk başta hızlıca yazılan "kirli" kod, zamanla yeni özellik eklemeyi o kadar zorlaştırır ki geliştirme hızı durma noktasına gelebilir.
- **Borcun Belirtileri:** Kodun "Sert" (değiştirilemez), "Kırılgan" (bir yeri düzeltirken başka yerin bozulması) ve "Hareketsiz" (tekrar kullanılamaz) olmasıdır.
- **Faiz Ödeme:** Borcu ödemenin tek yolu düzenli "Refactoring" (iyileştirme) ve test kapsamını artırmaktır.

---
## 4. Endüstriyel Vaka Çalışmaları (Büyük Şirketler Ne Yapıyor?)

Teorik prensiplerin pratikteki karşılığını dev şirketlerin deneyimlerinden görebiliyoruz:

- **Stripe (Sorbet):** 3.000'den fazla mühendisi olan Stripe, devasa Ruby (dinamik) kod tabanını yönetmek için **Sorbet** adlı bir statik kontrol aracı geliştirdi. Bu araç sayesinde kod tabanını parçalamadan 10 yıl boyunca güvenle büyütmeyi başardılar.

- **Dropbox (Mypy):** Dropbox, 4 milyon satırlık Python kodunda yaşanan üretkenlik kaybını durdurmak için statik tiplemeye geçti. Tip denetimi sayesinde, normalde dakikalar süren testlerin bulacağı hataları saniyeler içinde tespit etmeye başladılar.

- **Airbnb (AI Destekli Dönüşüm):** Airbnb, 1,5 yıl süreceği tahmin edilen manuel test dönüşüm projesini, yapay zeka ve statik tipleme güvencesiyle sadece 6 haftada tamamladı. Kodun tip sisteminin net olması, yapay zekanın hata yapmadan dönüşüm yapabilmesini sağladı.

---
## 5. Uygulamalı Mimari Tavsiyeler
1. **Hibrit Yapılardan Kaçının:** Bir sınıf ya sadece veri tutan bir yapı (DTO) olmalı ya da sadece davranış sergileyen bir nesne (Object) olmalı. İkisini karıştırmak bakımı imkansız hale getirir.
2. **Demeter Yasası'nı Uygulayın:** Bir nesne, kullandığı başka bir nesnenin iç detaylarını bilmemelidir. Zincirleme metot çağrılarından ('a.b().c().d()') kaçının.
3. **Kademeli Tipleme:** Eğer projeniz Python veya JavaScript gibi dinamik bir dildeyse, projenin en başından itibaren TypeScript veya Python Type Hints gibi araçları kullanarak borç birikmesini engelleyin.
4. **Basitlik (KISS):** En gelişmiş tip sistemini veya en karmaşık generic yapıyı kullanmak her zaman en iyisi değildir. En temiz kod, ihtiyacı karşılayan en basit koddur.

**Sonuç olarak;** statik dillerin güvenliği ile dinamik dillerin hızı artık birer zıt kutup değil, doğru araçlarla (gradual typing) birleştirilebilen birer mühendislik tercihindir. Temiz kod, makinenin değil, başka bir insanın anlayabileceği şekilde yazılmış koddur.
 
