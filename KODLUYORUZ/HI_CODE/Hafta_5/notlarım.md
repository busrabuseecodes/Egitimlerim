# 📘 HI-KOD Mobil Uygulama Geliştirme Atölyesi – Hafta 5 Ders 1

## 🎯 Dart’a Giriş

- **DartPad Online Compiler:** DartPad(https://dartpad.dev/?utm_source=copilot.com)
- **Resmi Site:** dart.dev(https://dart.dev/?utm_source=copilot.com)
- **Flutter Resmi Sitesi:** flutter.dev(https://flutter.dev/?utm_source=copilot.com)
- **Pub Dev (paket yönetimi):** pub.dev:(https://pub.dev/?utm_source=copilot.com)

## 📝 Dart Dili Nedir?
- Google tarafından **2011**’de geliştirildi.

- Flutter projelerinin temel dilidir (mobil, web, sunucu).

- **Nesne Tabanlı (OOP):** Dart’ta her şey bir nesnedir.

- Temiz ve anlaşılır sözdizimine sahiptir.

## 💬 Yorum Satırları
```dart
// Tek satırlı yorum
// Retrieve from the database the list filtered by company

/*
 Çok satırlı yorum
 Allow users to filter by multiple options
 listOrders.get(filterBy: _userFilter ...)
*/
```
## 🔢 Veri Tipleri
| Veri Tipi | Tanım | Örnek |
| --- | --- | --- |
| int | Tam sayılar (Doğal sayılar) | int age = 10; |
| double | Ondalıklı sayılar | double price = 10.5; |
| String | Metinsel veriler | String name = "John"; |
| bool | Mantıksal değerler (true/false) | bool isOpen = true; |
| dynamic | Çalışma zamanında tipi değişebilen esnek yapı | dynamic a = 10; a = "metin"; |

## ✍️ Değişken Tanımlama
```dart
String firstName = "John";  // String tipinde
int myAge = 10;             // int tipinde
```

## ⚖️ Var, Final, Const, Dynamic
```dart
// var: tipi atanan değere göre belirlenir
var name = "John";  

// final: runtime’da belirlenir, değiştirilemez
final filter = "company";  

// const: compile-time’da belirlenir, değiştirilemez
const pi = 3.14;  

// dynamic: tipi çalışma zamanında değişebilir
dynamic a = 10;
a = "metin";  // geçerli
```
---
## 🖨️ Konsola Yazdırma
```dart
print(myAge);                  // sadece değişken
print("Yaşım: $myAge");        // yazıyla değişken
print("Sonuç: ${10 + 5}");     // işlemli değişken
```
---
## 🏷️ İsimlendirme Kuralları
- Özel karakter yok
- Rakamla başlayamaz
- Boşluk içeremez
- Türkçe harf yok
- Rezerve kelimeler kullanılamaz (int, String vb.)
- Anlamlı, kısa ve öz olmalı

## İsimlendirme Standartları

| Naming Convention | Example Format |
| --- | --- |
| Pascal Case | PascalCase |
| Camel Case | camelCase |
| Snake Case | snake_case |
| Kebab Case | kebab-case |

## ➕ Aritmetik Operatörler
| Operatör | İşlevi |
| --- | --- |
| + | Toplama |
| - | Çıkarma |
| / | Bölme |
| * | Çarpma |
| % | Mod Alma |

**Örnek**
```dart
void main() {
  int a = 5;
  int b = 7;
  print("Toplam: ${a + b}"); // 12
}
```
