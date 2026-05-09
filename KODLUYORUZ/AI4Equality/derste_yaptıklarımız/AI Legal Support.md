# AI Legal Support — Yapay Zeka Destekli Hukuki Danışman (Kadın Hakları)

**AI Legal Support**, kadınların hukuki haklarına güvenli, anonim ve ücretsiz erişimini sağlamak üzere tasarlanmış bir yapay zeka destekli hukuki danışmanlık platformudur. Platformun çekirdeğini **7/24 çalışan chatbot, otomatik dilekçe üreticisi, gönüllü avukat/STK yönlendirme ağı ve gizlilik-odaklı delil yönetimi** oluşturur.

**Belge içinden iki örnek cümle:** 
    “AI Legal Support, kadınların hukuki haklarına güvenli, anonim ve ücretsiz erişimini sağlayan yapay zeka destekli bir danışmanlık platformudur.”  
    “Yapay Zeka Destekli Chatbot: 7/24 hukuki sorulara yanıt veren akıllı asistan.”

## İçindekiler
1. Proje Vizyonu ve Hedefleri
2. Ürün Özellikleri ve Kullanım Senaryoları (Detaylı, Çok Sayıda Örnek)
3. Teknik Mimari, Veri ve Güvenlik (Şemalar, JSON Örnekleri)
4. Yasal Uyum, Etik, Denetim ve Sorumluluk Prosedürleri
5. Operasyonel Plan, Yol Haritası ve KPI’lar (Ölçümler + Örnek Raporlar)
6. Ekler: Dilekçe Şablonları, Chat Diyalogları, API Örnekleri, Eğitim/Etiketleme Rehberi+ 

## 1. Proje Vizyonu ve Hedefleri
**Vizyon:** Hukuki bilgiye erişimi demokratikleştirerek, kadınların haklarını öğrenmelerini, savunmalarını ve gerektiğinde güvenli yönlendirme alabilmelerini sağlamak.

**Kısa vadeli defterler(MVP)**
- 7/24 çalışan Türkçe hukuki chatbot (acil durum tespiti + yönlendirme).
- Uzaklaştırma ve temel koruma dilekçesi otomatik üretimi.
- Anonim kullanım modu ve temel güvenlik katmanları.
- Pilot uygulama: 2 şehir + 3 STK ortaklığı.

**Orta/uzun vadeli hedefler:**
- Geniş dilekçe kütüphanesi, gönüllü avukat ağı, entegrasyonlar (baro, STK, sosyal hizmetler).
- Çok dilli destek, mobil uygulama, offline hafif sürüm.
- Kurumsal B2B modüller (STK raporlaması, eğitim paketleri).

**Hedef Kitle (detaylı):**
- Aile içi şiddet mağdurları; acil yönlendirme gerektiren vakalar.
- Hukuki süreçleri ilk kez deneyimleyecek kadınlar; adım adım rehberlik ihtiyacı.
- Düşük gelirli veya kırsal bölgelerde yaşayan kadınlar; düşük bant genişliği desteği.
- STK’lar, sosyal hizmet uzmanları, gönüllü avukatlar.

---
# 2. Ürün Özellikleri ve Kullanım Senaryoları (Detaylı)
## 2.1. Yapay Zeka Destekli Chatbot — Özellikler ve Örnek Diyaloglar
- Doğal dilde Türkçe soru-cevap; huhhuki terminoloji desteği.
- **Acil durum tespiti:** fiziksel tehtit,şiddet,kaçma ihtiyacı.
- **Yönlendirme:** 155/112, barınma STK'ları , gönüllü avukat listesi.
- Oturum anonimleştirme; kısa süreli loglama; RAG (retrieval-augmented generation) ile güncel mevzuata erişim.

---

## Örnek diyalog — Acil durum:
```bash
    - Kullanıcı:"Eşim beni tehdit ediyor, şu an evdeyim."
    - Bot:"Güvende misiniz? Eğer tehlikedeyseniz 155 veya 112'yi arayın. Uzaklaştırma dilekçesi hazırlamamı ister misiniz? Anonim kalmak ister misiniz?"
    - Kullanıcı: "Evet, anonim olsun ve dilekçe hazırla."
    - Bot: "Olay tarihi, kısa açıklama ve varsa tanık bilgisi girin. Dilerseniz delil yükleyebilirsiniz; dosyalar şifrelenerek saklanacaktır."
```
---

**Bilgilendirme örneği**
```bash
    - Kullanıcı:"Boşanma süreci nasıl işler?"
    - Bot:"Boşanma süreci genel hatlarıyla şu adımlardan oluşur: dava açma, geçici tedbir talepleri, delil sunma, mahkeme kararı. Hangi ilde olduğunuzu söylerseniz yerel uygulamalar hakkında daha spesifik bilgi verebilirim."
```

**Avukat yönlendirme örneği** 
```bash
    - Kullanıcı:"Avukatla görüşmek istiyorum."
    - Bot:"Uzmanlık alanınıza göre 3 gönüllü avukat öneriyorum. Anonim ön görüşme talep ediyorsanız kısa bir özet paylaşın; avukatlar güvenli kanal üzerinden ulaşacaktır."
```

## 2.3 Otomatik Dilekçe Hazırlama — Desteklenen Türler

- **Uzaklaştırma talebi** (koruma kararı).
- **Boşanma dilekçesi.**
- **Şikayet dilekçesi** (suç duyurusu).
- **Nafaka talepleri** (geçici ve kalıcı).
- **İcra başvuruları.**

**Dilekçe üretim akışı**
1. Kullanıcı dilekçe türünü seçer.
2. Sistem yapılandırılmış form sunar.
3. Kullanıcı verileri girer; sistem taslak üretir.
4. Kullanıcı taslağı gözden geçirir; anonimlik tercihleri belirler.
5. PDF/Word çıktısı oluşturulur; istenirse gönüllü avukata gönderilir.
6. Uzaklaştırma talebi kısa şablon

**Örnek: Uzaklaştırma Talebi (kısa şablon)**
```bash
    Sahibinin Bilgileri:
    - Adı Soyadı: [Anonim/İsteğe Bağlı]
    - Adres: [Opsiyonel]
    - Telefon: [Opsiyonel]

    Olayın Özeti:
    - Tarih: 2026-05-01
    - Olayın Açıklaması: [Kısa ve net açıklama]

    Talep:
    - Şüphelinin uzaklaştırılması ve koruma tedbirlerinin uygulanması talep olunur.

    Ekler:
    - Deliller: [Fotoğraf, mesaj, tanık beyanı]
```
---
## 2.3. Avukat ve STK Yönlendirmesi — Eşleştirme Mantığı
- Eşleştirme kriterleri:
- Uzmanlık alanı (aile hukuku, ceza hukuku vb.)
- Coğrafi yakınlık (isteğe bağlı)
- Dil ve iletişim tercihi (sesli/görsel/mesaj)
- Avukatın gönüllülük durumu ve müsaitlik takvimi

**Örnek akış:**
- Kullanıcı dilekçeyi oluşturur → “Avukatla görüş” seçer → Sistem 3 uygun avukat önerir → Kullanıcı anonim ön görüşme talep eder → Avukatla güvenli kanal üzerinden 15 dakikalık ön görüşme sağlanır.

## 2.4. Delil Yönetimi ve Güvenlik Özellikleri
**Özellikler:**
- Şifreli delil depolama (AES-256)
- Kullanıcı kontrollü paylaşım (kiminle, ne kadar süreyle paylaşılacağı)
- Delil zaman damgası ve hash doğrulama (delil bütünlüğü)
- Opsiyonel “güvenli paylaşım” ile deliller doğrudan avukat/STK ile paylaşılabilir

**Örnek kullanım:**
- Kullanıcı fotoğraf yükler → Sistem fotoğrafı şifreler ve hash oluşturur → Kullanıcı avukat onayı verirse avukat erişimi sağlanır → Delil paylaşımı loglanır.

# 3. Teknik Mimari, Veri ve Güvenlik
## 3.1. Yüksek Seviyeli Mimari (Bileşenler)
- **Frontend:** React (web), React Native (mobil) — WCAG uyumu.
- **API Katmanı:** FastAPI (Python) veya Express (Node.js).
- **AI Katmanı:** Büyük dil modeli (ör. GPT-family veya benzeri) + özel Türkçe hukuki fine-tuning + RAG ile hukuki veri tabanı.
- **Veri Depolama:** Postgres (meta veriler), S3-benzeri blob (şifreli deliller).
- **Kimlik & Güvenlik:** OAuth2 / JWT (anonim token modu), RBAC.
- **Monitoring:** Prometheus + Grafana; hata izleme Sentry.

## 3.2. Veri Şemaları — JSON Örnekleri
**Oturum (session) örneği**
```Json
{
  "session_id": "sess_abc123",
  "anonymous": true,
  "created_at": "2026-05-08T20:00:00Z",
  "last_active": "2026-05-08T20:15:00Z"
}
```

**Dilekçe taslağı (CaseDraft)**
```Json
{
  "draft_id": "draft_001",
  "session_id": "sess_abc123",
  "case_type": "uzaklastirma",
  "fields": {
    "olay_tarihi": "2026-05-01",
    "olay_aciklama": "Tehdit ve fiziksel şiddet",
    "taniklar": ["isim1", "isim2"]
  },
  "status": "taslak",
  "created_at": "2026-05-08T20:05:00Z"
}
```
## 3.3. Güvenlik ve Uyumluluk (KVKK / GDPR)
**Temel ilkeler:**

- **Veri minimizasyonu:** Sadece gerekli alanlar toplanır.
- **Anonimleştirme:** Kişisel veriler kullanıcı talep etmedikçe saklanmaz.
- **Şifreleme:** AES-256 at-rest; TLS 1.2+ transit.
-**Erişim kontrolü:** RBAC; avukat/STK erişimleri sınırlandırılır.
- **Denetim izi:** Tüm kritik işlemler loglanır; loglar şifreli depoda tutulur.
- **Veri silme:** Kullanıcı talebiyle verilerin kalıcı silinmesi prosedürü.

---
# 4. Yasal Uyum, Etik ve Denetim Süreçleri
## 4.1. Hukuki Doğruluk ve İnsan Denetimi
- **İnsan denetimi zorunlu:** AI tarafından üretilen hukuki içerikler düzenli olarak avukatlar tarafından denetlenir.

- **Sorumluluk beyanı:** Platform, hukuki tavsiye yerine bilgilendirme sunduğunu açıkça belirtir; kritik durumlarda avukat yönlendirmesi önerilir.

## 4.2. Etik İlkeler ve Önyargı Yönetimi
- **Çeşitlendirilmiş eğitim verisi:** Model önyargılarını azaltmak için farklı demografik ve hukuki kaynaklardan veri.
- **Şeffaflık:** Kullanıcıya “AI tarafından oluşturuldu” etiketi gösterilir.
- **Geri bildirim döngüsü:** Kullanıcı raporları ve hata bildirimleri için hızlı aksiyon SLA’ları.

## 4.3. Denetim Süreçleri
- ***İç denetim:** Haftalık içerik örnekleri avukat panelinde incelenir.
- **Dış denetim:** Yılda bir bağımsız hukuk/etik denetimi.
- **SLA:** Kritik hatalara 24 saat içinde müdahale.
---
# 5. Operasyonel Plan, Yol Haritası ve KPI’lar
## 5.1. 12 Aylık Yol Haritası (Detaylı)
- **Ay 0–2:** Gereksinim toplama, STK/Baro işbirlikleri, MVP tasarımı.
- **Ay 3–5:** Chatbot temel akışları, dilekçe şablonları, güvenlik altyapısı.
- **Ay 6–8:** Pilot (2 şehir), gönüllü avukat havuzu, kullanıcı geri bildirimleri.
- **Ay 9–12:** Ölçekleme, mobil uygulama, entegrasyonlar, ulusal lansman.

## 5.2. KPI’lar ve Örnek Hedefler
| KPI | Hedef (12 ay) |
| --- | --- |
| Aylık aktif kullanıcı (MAU) | 10.000 |
| Chatbot çözüm oranı | %70 ilk etkileşimde çözüm |
| Avukat eşleşme başarı oranı | %40 vaka sonuçlanma |
| Gizlilik ihlali | 0 (sıfır tolerans) |
| Kullanıcı memnuniyeti (CSAT) | 4.2 / 5 |

## 5.3. Pilot Operasyon Örneği
- **Pilot şehirler:** İzmir, Gaziantep.
- **Ortak STK’lar:** Mor Çatı, yerel kadın dernekleri.
- **Pilot hedefleri:** 500 kullanıcı, 50 dilekçe taslağı, 20 avukat eşleşmesi.

---
# 6. Ekler — Uygulamalı Şablonlar, Diyaloglar, API Örnekleri, Eğitim Rehberi
## 6.1. Örnek Dilekçe Şablonları (Detaylı)
**Uzaklaştırma Talebi — Tam Şablon (Markdown)**
```bash
    T.C.
    [İLGİLİ MAHKEME ADI]

    DAVACI: [Adı Soyadı / Anonim]
    VEKİLİ: [Varsa]
    DAVALI: [Şüphelinin Adı Soyadı]

    KONU: Uzaklaştırma ve koruma tedbirlerinin uygulanması talebidir.

    AÇIKLAMALAR:
    1. Olayın tarihi ve yeri: ...
    2. Olayın kısa özeti: ...
    3. Deliller: Fotoğraf, mesaj, tanık beyanı (eklerde sunulmuştur).

    HUKUKİ SEBEPLER: 6284 sayılı Kanun ve ilgili mevzuat.

    SONUÇ VE TALEP: Şüphelinin uzaklaştırılması ve gerekli koruma tedbirlerinin uygulanması talep olunur.
```

## 6.2. Örnek Chatbot Senaryoları (Geniş)
- **Senaryo A — Acil Tehdit:** “Eşim beni dövdü” → Bot: acil yönlendirme + uzaklaştırma dilekçesi formu + barınma STK önerisi.
- **Senaryo B — Boşanma Bilgilendirme:** “Boşanma süreci nasıl işler?” → Bot: süreç adımları, gerekli belgeler, örnek dilekçe linki, avukat yönlendirmesi.
- **Senaryo C — Nafaka Hesaplama:** “Geçici nafaka nasıl hesaplanır?” → Bot: genel hesaplama mantığı, örnek hesaplama, avukat yönlendirmesi.

## 6.3. API Örnekleri (REST)
**Oturum oluşturma**
```bash
    POST /api/v1/sessions
    Body: { "anonymous": true }
    Response: { "session_id": "sess_abc123", "token": "jwt_token" }
```
**Dilekçe taslağı oluşturma**
```bash
    POST /api/v1/casedrafts
    Headers: Authorization: Bearer jwt_token
    Body: { "case_type": "uzaklastirma", "fields": { ... } }
    Response: { "draft_id": "draft_001", "status": "taslak" }
```

## 6.4. Eğitim ve Veri Etiketleme Rehberi (AI Eğitimi İçin)
**Veri kaynakları:**
- Türk Medeni Kanunu, 6284, İstanbul Sözleşmesi, Yargıtay kararları.
- STK raporları, akademik makaleler, hukuki makale özetleri.

**Etiketleme kuralları (örnek):**
- **Intent etiketleri:** acil_tehdit, dilekce_talebi, bilgi_sorgu, avukat_istegi.
- **Entity etiketleri:** tarih, yer, tanik, delil_tipi, mevzuat_madde.
- **Kalite kontrol:** Her örnek en az 2 etiketleyici tarafından işaretlenir; uyuşmazlık durumunda hukuk uzmanı karar verir.

**Örnek etiketleme örneği**
```bash
    Metin: "Eşim beni 01/05/2026 tarihinde darp etti."
    Intent: acil_tehdit
    Entities: { "tarih": "01/05/2026", "olay": "darp" }
```
## 6.5. Test Planı ve QA Senaryoları
- **Fonksiyonel testler:** Chatbot intent doğruluğu, dilekçe alanlarının doğru doldurulması.
- **Güvenlik testleri:** Penetrasyon testi, veri sızıntısı simülasyonları.
- **Kullanılabilirlik testleri:** 5 farklı demografik grupta kullanıcı testi.
- **Performans testleri:** 1000 eşzamanlı oturum altında yanıt süreleri.

---
## Operasyonel Prosedürler ve Kriz Yönetimi
**Kritik olay akışı (örnek):**
1. Kullanıcı acil tehlike bildirir → Bot acil yönlendirme yapar (155/112) → Operasyon ekibi uyarılır.
2. Veri sızıntısı tespit edilirse → 1 saat içinde iç ekip bilgilendirilir → 24 saat içinde dış denetim başlatılır.
3. Yanlış hukuki yönlendirme raporu alınırsa → İlgili içerik derhal pasif hale getirilir → Avukat paneli incelemesi başlatılır.

**Gönüllü avukat yönetimi:**
- **Onboarding:** Kimlik doğrulama, baro numarası doğrulama, eğitim.
- **Görev dağılımı:** Haftalık nöbet çizelgesi, acil vaka rotasyonu.
- **Ödüllendirme:** Sertifika, referans mektubu, görünürlük programları.

---

## Finansman, İşbirlikleri ve Sürdürülebilirlik
**Finansman kaynakları:**
- AB hibeleri, UNDP fonları, yerel vakıf hibeleri.
- Kurumsal sponsorluklar (teknoloji şirketleri).
- Bağış kampanyaları ve gönüllü destek.

**İşbirlikleri:**
- **STK’lar:** Mor Çatı, KADEM, yerel kadın dernekleri.
- **Hukuk kurumları:** Baroların kadın hakları komisyonları.
- **Akademi:** Üniversitelerle araştırma ortaklıkları.

**Sürdürülebilirlik modeli:**
- Temel hizmet ücretsiz.
- Kurumsal eğitim paketleri ve entegrasyonlar (B2B) ücretli.
- Raporlama ve veri analitiği hizmetleri STK/kurumlara ücretli sunulabilir.

---

### Sonuç ve İleriye Dönük Adımlar
**Önceliklendirme önerisi (MVP):**
- Acil durum tespiti ve yönlendirme akışı.
- Uzaklaştırma dilekçesi otomasyonu.
- Anonim kullanım ve güvenli delil depolama.
- Pilot uygulama ve STK ortaklıkları.

**Hemen yapılabilecekler (ilk 30 gün):**
- Hukuki içerik toplama ve şablon oluşturma.
- Chatbot temel intent setinin hazırlanması (acil_tehdit, dilekce_talebi, bilgi_sorgu).
-Güvenlik mimarisi taslağının tamamlanması.