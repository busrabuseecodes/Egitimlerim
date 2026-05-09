# 🐣 Dart OOP Projesi - Ders 2

Bu proje, **Dart dilinde nesne yönelimli programlama (OOP)** kavramlarını göstermek için hazırlanmıştır.  
Kalıtım, `abstract` sınıflar, `override` metodlar ve `static` değişken/metod kullanımı örneklenmiştir.

---

## 📂 Dosya Yapısı

Dart_OOP_Ornekler/
│
├── hayvan.dart      # Temel sınıf (Hayvan)
├── insan.dart       # Hayvan'dan türeyen Insan sınıfı
├── bebek.dart       # Insan'dan türeyen Bebek sınıfı
├── printer.dart     # Abstract sınıf örneği
└── main.dart        # Ana dosya (programın giriş noktası)


---

## 📌 Sınıflar ve Açıklamalar

### `Hayvan` (hayvan.dart)
- Temel sınıf.
- `sesCikar()` metodu: "Hayvan sesi çıkarır."

### `Insan` (insan.dart)
- `Hayvan` sınıfından türemiştir.
- Özellikler: `ad`, `soyad`, `yas`.
- Metodlar:
  - `konus()` → "Ben bir insanım."
  - `uyu()` → "8 saat uyurum."
  - `sesCikar()` → Override edilmiş, "İnsan sesi çıkarır."

### `Bebek` (bebek.dart)
- `Insan` sınıfından türemiştir.
- Özellik: `mamaSaati`.
- Constructor: "Bebek constructor'ı".
- `uyu()` → Override edilmiş, önce "12 saat uyurum." sonra `super.uyu()` ile "8 saat uyurum."

### `Printer` (printer.dart)
- `abstract class Printer` → `printDocument()` metodunu tanımlar.
- `class A` → `Printer`’ı implement eder, "Abstract class içeriği yazdırıldı." çıktısını verir.

### `MyStaticClass` (main.dart içinde)
- Statik değişken: `staticVariable = 10`.
- Statik metod: `staticMethod()` → "Statik metod çalıştı."

---

## ▶️ Program Çalıştırma

Ana dosya: **main.dart**

```bash
dart run main.dart
```

## Beklenen Çıktı
```dart
Insan constructor'i
Bebek constructor'ı
8 saat uyurum.
12 saat uyurum.
8 saat uyurum.
Abstract class içeriği yazdirildi.
Statik değişken ve metod örneği:
Statik metod çalişti.
Statik değişken: 10
```
---
## 🎯 Öğrenilen Kavramlar
- **Kalıtım (Inheritance)** → 'extends' kullanımı
- **Metod Ezme (Override)** → '@override' ile üst sınıf metodunu değiştirme
- **Abstract Sınıflar** → 'abstract' keyword ve implementasyon
- **Statik Üyeler** → static değişken ve metod kullanımı
- **Constructor Çalışma Sırası** → Alt sınıf ve üst sınıf constructor’larının çağrılması