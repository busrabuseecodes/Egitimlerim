# HI-KOD MOBİL UYGULAMA GELİŞTİRME ATÖLYESİ - HAFTA 5 DERS 1

## Dart Diline Giriş
- **DartPad Online Compiler:** DartPad(https://dartpad.dev/)
- **Dart Resmi Sitesi:** dart.dev(https://dart.dev/)
- **Flutter Resmi Sitesi:** flutter.dev(https://flutter.dev/)
- **Pub Dev:** pub.dev(https://pub.dev/)
---

## Dart Dili Nedir?
- Dart, Google tarafından 2011'de "web'in geleceği" olarak sunulmuş, ancak Flutter ile gerçek gücüne kavuşmuştur.

- Flutter projeleri (mobil, web ve sunucu uygulamaları) geliştirmenin temelidir.

- **Nesne Tabanlı (OOP):** Dart'ta her şey (sayılar ve fonksiyonlar dahil) bir nesnedir.Nesne tabanlı (Object-Oriented) bir programlama dilidir.

- Anlaşılması kolay, temiz bir sözdizimine sahiptir.

- **Resmi Kaynaklar:** Dokümantasyon için dart.dev, paket yönetimi için pub.dev ana referans noktalarıdır.
---
## Comment Line (Yorum Satırı)

- **Single line comment (Tek satırlı):** 
```dart
// Tek satırlı yorum
// Retrieve from the database the list filtered by company
```

- **Multiple line comment (Çok satırlı)**
```dart
/*
 Çok satırlı yorum
 Allow users to filter by multiple options
 listOrders.get(filterBy: _userFilter ...)
*/
```

---
## Dart Data Types (Veri Tipleri)
Dart, statik ve dinamik tiplemeyi bir arada sunan esnek bir yapıdadır:
| Veri Tipi | Tanım                                           | Örnek                          |
|-----------|-------------------------------------------------|--------------------------------|
| int       | Tam sayılar (Doğal sayılar)                     | int age = 10;                  |
| double    | Ondalıklı sayılar                               | double price = 10.5;           |
| String    | Metinsel veriler                                | String name = "John";          |
| bool      | Mantıksal değerler (true/false)                 | bool isOpen = true;            |
| dynamic   | Çalışma zamanında tipi değişebilen esnek yapı   | dynamic a = 10; a = "metin";   |

---
## Değişken Tanımlama

![alt text](image.png)
```dart
String firstName = "John";  // String tipinde
int myAge = 10;             // int tipinde
```

---

**Yapı:** 'Data Type' + 'Variable Name' + 'Variable Value'
    **Örnek:** 'String firstName = "John";'

## Var ve Const kavramları

- **Var Kullanımı:** Veri tipini belirtmeden 'var' anahtar kelimesiyle de tanımlama yapılabilir. Dart, atanan değere göre tipi otomatik belirler.Atadığımız değişkene göre değişken tipini belirler. (Sonradan değiştirilebilir.)

- **Final ve Const:** Sabit değerler için kullanılır.

    - '**final:**' Çalışma zamanında (runtime) değeri belirlenir.

    - '**const:**' Derleme zamanında (compile-time) değeri belirlenir.
---

## Değişken İsimlendirme Kuralları
1. Özel karakter kullanılamaz: Sadece harf (A-Z, a-z), rakam (0-9) ve alt çizgi (_) kullanılabilir.

2. Rakamla başlayamaz.

3. Boşluk içeremez.

4. Türkçe harfler içeremez.

5. Rezerve kelimeler kullanılamaz: int, String, void gibi dile ait ifadeler isim olamaz.

6. Anlamlı, kısa ve öz olmalıdır.
---


## İsimlendirme Standartları
- **Camel Case (camelCase):** Kelimeler bitişik yazılır, ilk kelime küçük harfle başlar, sonraki kelimelerin ilk harfi büyük olur. (Örn: cepTelefonu, helloWorld)

- **Snake Case (snake_case):** Kelimeler alt tire ile bağlanır.

    - Lower Snake Case: 'hello_world'

    - Upper Snake Case: 'Hello_World'

- **Screaming Snake Case (SCREAMING_SNAKE_CASE):** Bütün harfler büyüktür. Genellikle sabit (constant) isimlendirmelerinde kullanılır. (Örn: 'PI_SAYISI')

## Konsola Değişken Bastırmak
- **Sadece değişken:** 'print(degisken);'

- **Yazıyla değişken ($):** 'print("Merhaba $name");'

- **İşlemli değişken bastırmak:** 'print("Sonuç: ${sayi1 + sayi2}");'
---

## Dynamic Veri Tipi
![alt text](image-1.png)
```dart
dynamic a =10; // İnteger
a='metin';     //String
```

- **VStatic Typing (var)**
var ile tanımlanan bir değişkenin tipi, atanan değere göre derleme zamanında belirlenir. Bir kez tip belirlendikten sonra, bu tip sabit
kalır ve değiştirilemez. Değer atandığı an (compile-time) kilitlenir.

```dart
var name = "John"; // Artık sadece String kabul eder.
// name = 123; // Hata: int türü String'e atanamaz.
```

- **Dynamic Typing (D Y N A M İ C)**
-dynamic ile tanımlanan bir değişkenin tipi, çalışma zamanında belirlenir ve herhangi bir tipe dönüşebilir. Bu, daha esnek ama aynı zamanda daha az güvenli bir tip anlamına gelir.
```dart
dynamic value = "John"; // Başlangıçta
String value = 123; // Şimdi int oldu
```
```dart
dynamic value = "Büşra"; 
value = 29; // Sorunsuz çalışır, tip güvenliğini esnetir
```
---

## Sabitler

İkisi de sonradan değiştirilemez, ancak bellek yönetimi açısından farkları büyüktür:  

**const:** Derleme aşamasında değeri bellidir. Uygulama çalışmadan önce bellekte yeri ayrılır.  

**final:** Değeri uygulama çalışırken (runtime) belirlenebilir. Örneğin, o anki saati bir sabite atayacaksan 'final' kullanmalısın.
---

# Dart Veri Tipleri

| Veri Tipi | Tanım                                           | Örnek                          |
|-----------|-------------------------------------------------|--------------------------------|
| int       | Tam sayılar (Doğal sayılar)                     | int age = 10;                  |
| double    | Ondalıklı sayılar                               | double price = 10.5;           |
| String    | Metinsel veriler                                | String name = "John";          |
| bool      | Mantıksal değerler (true/false)                 | bool isOpen = true;            |
| dynamic   | Çalışma zamanında tipi değişebilen esnek yapı   | dynamic a = 10; a = "metin";   |

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

## Konsola değişken bastırmak
- Sadece değişken bastırmak
- Yazıyla değişken bastırmak ($)
- Yazıyla işlemli değişken bastırmak

## Variable isimlendirirken dikkat etmeniz gereken şeyler
- Özel karakter kullanılamaz: Sadece harf (A-Z veya a-z), rakam (0-9) ve alt çizgi (_) karakteri kullanılabilir.
- Variable isimleri rakamla başlayamaz.
- Variable isimleri boşluk içeremez.
- Variable isimleri Türkçe harfler içeremez.
- Variable isimleri Dart veya flutterdaki int, String void gibi tanımlı ifadeler olamaz.
- Variable isimleri anlamlı kısa öz olmalıdır.

## Variable isimlendirme Kuralları
**Camel Case (CamelCase)**
- Camel case çok kullanı lan isimlend irme ku ralların dan b irid ir. Kelimel er bitişi k ve ilk harfleri büyük yazıl ır. İlk kel imenin ilk har fin in küçük yazıld ığı olabil ir.
- **Örnek:** HelloWorld
- CepTelefonu

**Snake Case (Snake_Case)**
- Upper snake case ve lower snake case olar ak iki ye ayı rabili riz. Keli me ler alttantire ile bi rbir ine bağlanı r.
- Upper snake case örnek: Hello_World
- Lower snake case örnek: hel lo_world
- Cep_telefonu

**Screaming snake case (SCREAMİNG_SNAKE_CASE)**
- Bütün harfler i büyük yazılır. Genellikle sabit isimlendirmede kullanılır .
- Screaming snake case örnek: HELLO_WORLD

# İsimlendirme Kuralları Tablosu

| Naming Convention | Example Format |
|-------------------|----------------|
| Pascal Case       | PascalCase     |
| Camel Case        | camelCase      |
| Snake Case        | snake_case     |
| Kebab Case        | kebab-case     |
---

- **Ekrana ilk yazımızı bastırmak**
```dart
void main() {

    print('Hello word');
}
```

# Dart Dilinde Aritmetik Operatörler

| Operatör | İşlevi   |
|----------|----------|
| +        | Toplama  |
| -        | Çıkarma  |
| /        | Bölme    |
| *        | Çarpma   |
| %        | Mod Alma |


- **İki sayıyı toplayan bir örnek yazalım**