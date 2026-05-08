# Hİ-KODKODLUYORUZ MOBİL UYGULAMA GELİŞTİRME ATÖLYESİ

## Hafta 5- Ders 1 Dart Diline Giriş

**Dart diline giriş**

- DartPad online compiler: DartPad
- Dart resmi sitesi: Dart resmi sitesi
- Flutter resmi sitesi: Flutter Resmi sitesi
- Pubdev: Pub Dev

**Dart dili Nedir?**
- Dart dili Google tarafından 2011'de oluşturuldu.
- Dart, Flutter projeleri (mobil, web ve sunucu uygulamaları) geliştirmeyi öğrenmenin temelidir.
- Nesne tabanlı bir programlama dilidir.
- Anlaşılması kolay bir dildir.

## Comment Line / Yorum satırı

- **Single line comment – Tek satırlı yorum satırı:**
```dart
// retrieve from the database the list filtered by company _listOrders.get(...)
```

- **Multiple line comment: Çok satırlı yorum satırı**
```dart
/*
 * Allow users to filter by multiple options
 _listOrders.get(filterBy: _userFilter...
*/
```

## Dart Data Types

- **integer (int) :** Doğal sayı
- **double :** .'lı sayı
- **String:** Metin/cümle
- **boolean:** Doğru/yanlış
- dynamic
---

## Değişken Tanımlama
![alt text](image-2.png)
---

## Var ve Const kavramları
- **Var:** Değişken tipini belirtmek istemediğimizde var tipini kullanırız. Atadığımız değişkene göre değişken tipini belirler. (Sonradan değiştirilebilir.)
- **Final ve Const:** Sonradan değiştirilemez.
---

**Dynamic Veri Tipi**
![alt text](image-3.png)
---

**VAR**
var ile tanımlanan bir değişkenin tipi, atanan değere göre derleme zamanında belirlenir. Bir kez tip belirlendikten sonra, bu tip sabit
kalır ve değiştirilemez.

```dart
var name = "John"; // String olarak tip çıkarımı yapılır
name = 123; // Hata: int türü String'e atanamaz
```

**D Y N A M İ C**
dynamic ile tanımlanan bir değişkenin tipi, çalışma zamanında belirlenir ve herhangi bir tipe dönüşebilir. Bu, daha esnek ama aynı zamanda daha az güvenli bir tip anlamına gelir.

```dart
dynamic value = "John"; // Başlangıçta
String value = 123; // Şimdi int oldu
```
---

```dart
// Declared without specifying the type - infers type
var fikter = 'company'

// Declared by type
String filter = 'company';

// Uninitialized variable has an initial value of null
String filter;

//Value will not change
final filter = 'company';

// or
final String filter = 'company';

// or
const String filter = 'company';
```
---
**Konsola değişken bastırmak**
- Sadece değişken bastırmak
- Yazıyla değişken bastırmak ($)
- Yazıyla işlemli değişken bastırmak

**Variable isimlendirirken dikkat etmeniz gereken şeyler**
- Özel karakter kullanılamaz: Sadece harf (A-Z veya a-z), rakam (0-9) ve alt çizgi (_) karakteri kullanılabilir.
- Variable isimleri rakamla başlayamaz.
- Variable isimleri boşluk içeremez.
- Variable isimleri Türkçe harfler içeremez.
- Variable isimleri Dart veya flutterdaki int, String void gibi tanımlı ifadeler olamaz.
- Variable isimleri anlamlı kısa öz olmalıdır.

**Variable isimlendirme Kuralları**

**Camel Case (CamelCase)**
Camel case çok kullanılan isimlendirme kurallarından biridir. Kelimeler bitişik ve ilk harfleri büyük yazıl ır. İlk kelimenin ilk harfinin küçük yazıldığı olabilir.
**Örnek:** HelloWorld
- CepTelefonu

**Snake Case (Snake_Case)**
Upper snake case ve lower snake case olarak ikiye ayırabiliriz. Kelimeler alttan tire(_) ile birbirine bağlanır.

- Upper snake case 
-**örnek:** Hello_World

- Lower snake case 
    **örnek:** hello_world
- Cep_telefonu

**Screaming snake case (SCREAMİNG_SNAKE_CASE)**
Bütün harfleri büyük yazılır. Genellikle sabit isimlendirmede kullanılır .
- örnek: HELLO_WORLD

## İsimlendirme Standartları
| Naming Convention | Example Format |
| --- | --- |
| Pascal Case | PascalCase |
| Camel Case | camelCase |
| Snake Case | snake_case |
| Kebab Case | kebab-case |

**Ekrana ilk yazımızı bastırmak**
```dart
void main() {
    print('Hello world')
}
```

## ➕ Aritmetik Operatörler
| Operatör | İşlevi |
| --- | --- |
| + | Toplama |
| - | Çıkarma |
| / | Bölme |
| * | Çarpma |
| % | Mod Alma |

**Örnek:İki sayıyı toplayan bir örnek yazalım**
```dart
void main() {
  int a = 5;
  int b = 7;
  print("Toplam: ${a + b}"); // 12
}
```