# HI-KOD MOBİL UYGULAMA GELİŞTİRME ATÖLYESİ - HAFTA 5 DERS 1

## Dart Diline Giriş
- **DartPad Online Compiler:** DartPad(https://dartpad.dev/)
- **Dart Resmi Sitesi:** dart.dev(https://dart.dev/)
- **Flutter Resmi Sitesi:** flutter.dev(https://flutter.dev/)
- **Pub Dev:** pub.dev(https://pub.dev/)
---
Dart Dili Nedir?
- Google tarafından 2011'de oluşturuldu.

- Flutter projeleri (mobil, web ve sunucu uygulamaları) geliştirmenin temelidir.

- Nesne tabanlı (Object-Oriented) bir programlama dilidir.

- Anlaşılması kolay bir dildir.

---
## Comment Line (Yorum Satırı)

- **Single line comment (Tek satırlı):** // yorum metni
    //Retrieve from the database the list filtered by company_listOrders.get(...)
- **Multiple line comment (Çok satırlı)**:** /* yorum metni */
    /*
    * Allow users to filter by multiple options_listOrders.get(filterBy: _userFilter....)
    */
---
## Dart Data Types (Veri Tipleri)
- **int (integer)**:** Tam(Doğal) sayılar.

- **double:** Ondalıklı sayılar.

- **String:** Metin/cümle yapıları.

- **bool (boolean):** Doğru (true) veya Yanlış (false) değerleri.

- **dynamic:** Tipi değişkenlik gösterebilen yapılar.
---
## Değişken Tanımlama
![alt text](image.png)
- **Yapı:** 'Data Type' + 'Variable Name' + 'Variable Value'
    - **Örnek:** 'String firstName = "John";'

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

**VAR**
- var ile tanımlanan bir değişkenin tipi, atanan
değere göre derleme zamanında belirlenir.
Bir kez tip belirlendikten sonra, bu tip sabit
kalır ve değiştirilemez.

    • var name = "John"; // String olarak tip
    çıkarımı yapılır

    • name = 123; // Hata: int türü String'e
    atanamaz

**D Y N A M İ C**
- dynamic ile tanımlanan bir değişkenin tipi,
çalışma zamanında belirlenir ve herhangi bir
tipe dönüşebilir. Bu, daha esnek ama aynı
zamanda daha az güvenli bir tip anlamına gelir.

    •dynamic value = "John"; // Başlangıçta
    String value = 123; // Şimdi int oldu

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