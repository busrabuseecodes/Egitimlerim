# 📘 OOP Ekstra Öğrenme Raporu (Dart)

Bu proje, **Dart dilinde Nesne Yönelimli Programlama (OOP)** kavramlarını örneklerle açıklamak için hazırlanmıştır.  
Kalıtım, override, abstract class, interface, composition ve upcasting/downcasting gibi temel OOP konuları gösterilmektedir.

---

## 📂 Dosya Yapısı

OOP_Examples/
│
├── Abstract Class.dart           # Abstract sınıf örneği
├── Inheritance(Kalıtım).dart     # Kalıtım örneği
├── Interface.dart                # Interface örneği
├── Override.dart                 # Override örneği
└── oop_examples.dart             # Tüm konuların birleştiği ana dosya


---

## 🧩 Konu Başlıkları ve Açıklamalar

### 1. Inheritance (Kalıtım)
-` Hayvan` sınıfı temel sınıftır.
- `Kopek` sınıfı `Hayvan`’dan türemiştir ve `sesCikar()` metodunu ezmiştir.
```dart
class Hayvan {
  void sesCikar() => print('Hayvan ses çıkarır.');
}

class Kopek extends Hayvan {
  @override
  void sesCikar() => print('Hav hav!');
}
```
### 2. Override
- `Insan` sınıfı `Uyu()` metoduna sahiptir.

- `Bebek` sınıfı `Insan`’dan türemiştir ve `Uyu()` metodunu override ederek `super.Uyu()` çağırır.

```dart
class Bebek extends Insan {
  @override
  void Uyu() {
    print('12 saat uyurum.');
    super.Uyu();
  }
}
```
---

## 3. Abstract Class
- `Printer` abstract sınıfı tanımlanır.

- `A` sınıfı bu abstract sınıfı extend ederek `printDocument()` metodunu uygular.

```dart
abstract class Printer {
  void printDocument();
}

class A extends Printer {
  @override
  void printDocument() => print('Abstract class');
}
```
---
## 4. Interface
- `IPrinter` interface olarak tanımlanır.

- `B` sınıfı `implements` ile bu interface’i uygular.

```dart
class IPrinter {
  void printDocument();
}

class B implements IPrinter {
  @override
  void printDocument() => print('Interface implementation');
}
```
---

## 5. Composition
- `Kitap` sınıfı içinde `Yazar` sınıfı kullanılarak bileşim (composition) örneği gösterilir.

```dart
class Yazar {
  String isim;
  Yazar(this.isim);
}

class Kitap {
  String ad;
  Yazar yazar;
  Kitap(this.ad, this.yazar);
}
```
--- 

## 6. Upcasting / Downcasting

- `Insan insan2 = Bebek();` → Upcasting

- `Bebek bebek2 = insan2;` → Downcasting

```dart
Insan insan2 = Bebek(); // Upcasting
if (insan2 is Bebek) {
  Bebek bebek2 = insan2; // Downcasting
  print('Downcasting başarılı: $bebek2');
}
```
---

## ▶️ Çalıştırma
Ana dosya: **OOP Ekstra Öğrenme Raporu.dart**

```bash
dart run OOP_Examples/OOP Ekstra Öğrenme Raporu.dart
```

Çalıştırıldığında:

- Kalıtım ve override örnekleri

- Abstract class ve interface uygulamaları

- Composition örneği

- Upcasting / Downcasting çıktıları ekrana yazdırılır.

---

## 🎯 Öğrenme Kazanımları
- OOP’nin temel kavramlarını Dart dilinde uygulamalı olarak öğrenmek

- Kalıtım, override, abstract class ve interface farklarını görmek

- Composition ve casting işlemlerini anlamak
---