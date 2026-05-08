# Yazılım Zanaatkarlığı: Temiz Kodun İsimlendirme ve Tip Sistemi Perspektifinden Analizi
Yazılım geliştirme süreci, kodun yazılmasından çok daha fazlasıdır; yazılan kodun okunması, anlaşılması ve sürdürülmesi asıl maliyeti ve kaliteyi belirleyen unsurlardır. Robert C. Martin'in "Clean Code" felsefesinde vurguladığı gibi, kod bir kez yazılır ancak binlerce kez okunur. Bu rapor, temiz kodun iki kritik seviyesini incelemektedir: Mikro seviyede "Değişken İsimlendirme" ve makro seviyede "Tip Sistemleri (Statik, Dinamik, Generic)".

---

## BÖLÜM 1: Mikro Temiz Kod – Değişken İsimlendirme Standartları
Temiz kodun en temel yapı taşı, değişkenlerin neyi temsil ettiğini ve neden var olduğunu açıkça ortaya koyan isimlendirmelerdir. İyi bir isimlendirme stratejisi, kodun kendi kendini belgelemesini (self-documenting) sağlar.

**1.1. Anlamlı ve Açık Niyet (Reveal Intent)**
Değişken isimleri, değişkenin niyetini belli etmelidir. 'x' veya 'y' gibi belirsiz isimler yerine 'boy' ve 'kilo' gibi somut isimler tercih edilmelidir.
  
* **Kötü Örnek:** 'd' (belirsiz)
* **İyi Örnek:** 'gunSayisi' (Ölçü birimi  ve amacı net)

**1.2. Uzunluk Dengesi ve Aranabilirlik**
Değişken isimleri ne anlamı gizleyecek kadar kısa, ne de okunabilirliği bozacak kadar uzun olmalıdır. Ayrıca kod içerisinde kolayca bulunabilen (searchable) isimler seçilmelidir.

* **Kötü Örnek:** 'kms'
* **İyi Örnek:** 'kilometreSayisi'

**1.3 Jargon ve Teknik Detaylardan Kaçma**
Kodun başkaları tarafından anlaşılabilmesi için sadece belirli bir grubun bildiği teknik jargonlardan kaçınılmalıdır. Ancak genel kabul görmüş kısaltmalar (örn: 'req' - request, 'res' - response) bir sorun teşkil etmez.

  * **Kötü Örnek:** 'serp' (Anlamını bilmeyenler iiçin belirsiz)
  * **İyi Örnek:** 'aramaMotoruSiralamasi'

**1.4 Dil ve Tip Stabndartları**
Her dilin  kendine has isimlendirme gelenekleri vardır. Python toplululğu 'snake_case' (örn: 'degisken_adi') kullanırken, Java ve C# ekosistemi 'camelCase' (örn: 'degiskenAdi')
standartlarını takip eder. Boolean (doğru/yanlış) değerler için ise durum bildiren 'is', 'has','can' gibi ön ekler kullanmak (örn: 'isActive','canExecute') okunabilirliği dramatik şekilde artırır.

---
## BÖLÜM 2: Makro Temiz Kod – Tip Sistemleri ve Mimari Tercihler
Yazılımın mimari sevisesinde, dillerin veriyi nasıl işlediği (statik vs. dinamik) ve bu yapıyı nasıl esnettiği (generic) projenin uzun vadeli başarısını ve teknik borç profilini belirler.

**2.1 Statik ve Dinamik Paradigmaların Karşılaştırılması**
Statik diller(Java,C++,Swift) tip kontrolüni derleme zamanında yaparken, dinamik diller (Python,JavaScript,Ruby) bu kontrolü çalışma zamanına öteler.

Özellik | Statik Tipleme | Dinamik Tipleme
--- | --- | ---
**Hata Tespiti** | Kod çalışmadan (**Derleme aşaması**)(Erken) | Kod çalışırken (**Runtime**) (Geç)
**Performans** | Yüksek (CPU yoğunluklu işlerde 10-100x hızlı) | Düşük (Runtime yorumlayıcı yükü)
**Geliştirme Hızı** | Baslangıçta daha yavaş (Tip tanımlamları) |Prototiplemede %40-60 daha hızlı
**Büyük Ölçekli Bakım** |Daha güvenli ve sürdürülebilir | Büyüdükçe test maliyeti artar

**2.2. Generic Programlama: Esneklik ve Güvenlik**
 Generic yapılar, statik dillerin katı yapısını bozmadan kodun tekrar kullanılabilirliğini artırır.
 
- **Java(Type Erasure):** Generic tipler derleme sonrası silinir ve yerlerine 'Object' konur. Bu, geriye dönük uyumluluk sağlar ancak çalışma zamanı yansımasını (reflection) zorlaştırır.
- **C# (Reification):** Tip bilgisi çalışma zamanında korunur, bu da özellikle değer tipleri için performans avantajı sağlar.
- **Temiz Kod Uyarısı:** Generic yapılar kod tekrarını azaltmıyor veya tip dönüşümü (casting) ihtiyacını ortadan kaldırmıyorsa kullanımı "Generic Suistimali"dir ve gereksiz karmaşıklık yaratır.

---

## BÖLÜM 3: Teknik Borç ve Endüstriyel Dönüşüm Stratejileri
Teknik borç, kısa vadeli hız kazanımları için yapılan suboptimal tercihlerin gelecekte ödenmesi gereken maliyetidir. Hatalı isimlendirmeler "Kod Borcu" yaratırken, yanlış tip sistemi tercihleri "Mimari Borç" oluşturur.

**3.1. Büyük Ölçekli Projelerde Tip Sistemi Modernizasyonu**
Dinamik dillerin yarattığı bakım zorluklarını aşmak için dev şirketler "Kademeli Tipleme" (Gradual Typing) yolunu seçmektedir:
  - **Stripe (Ruby & Sorbet):** 3.000 mühendise ulaşan Stripe, Ruby monolith yapısını Sorbet ile statik tiplemeye geçirerek 10 yıl daha güvenle korumayı başardı.
  - **Dropbox (Python & Mypy):** 4 milyon satırlık Python kodunu Mypy ile tiplemeye başlayarak çalışma zamanı hatalarını dramatik şekilde azalttılar ve kodun anlaşılırlığını artırdılar.
  - **Airbnb (React & AI):** Airbnb, 3.500 test dosyasının Enzyme'den RTL'ye geçişini, yapay zeka ve statik tipleme güvencesiyle 18 aydan 6 haftaya indirdi.

---

### Sonuç ve Öneriler
Temiz kod yazmak bir disiplin meselesidir. Mikro seviyede anlamlı isimlendirmelerle başlayan bu yolculuk, makro seviyede **doğru tip sistemleri ve mimari kararlarla** desteklenmelidir.
  1. Küçük fonksiyonlar ve niyetini belli eden isimler kullanın.
  2. Dinamik bir dilde çalışıyorsanız, proje büyüdükçe mutlaka tipleme araçlarını (TypeScript, Mypy vb.) devreye sokun.
  3. Gereksiz generic kullanımlardan ve "hibrit" (yarım nesne, yarım veri yapısı) yapılardan kaçının.

**Robert C. Martin'in dediği gibi: "Leave the campground cleaner than you found it." (Kamp alanını bulduğundan daha temiz bırak.)**
