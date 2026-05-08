# Temiz Kod 2 - Statik, Dinamik ve Generic Kavramları

Bir önceki yazımızda "Temiz Kod" konusu altında "Değişken İsimlendirme" üzerine durmuştuk ve bu konunun önemini anlamıştık. Şimdi, kod yazmanın ve onu daha okunabilir hale getirmenin başka bir önemli yönü üzerine konuşacağız: Statik, Dinamik ve Generic Kavramları.

## Statik ve Dinamik Nedir?

"Statik" ve "Dinamik" kelimeleri, programlama dilinin türünü belirler ve kodun nasıl çalıştırıldığına işaret eder.

## Statik Tip

Statik tipte, değişkenlerin türleri, değişkenler oluşturulurken belirlenir ve programın çalışma zamanı boyunca değiştirilemez. Bu, hataları daha erken yakalamamızı sağlar ve derleyici optimizasyonlarına olanak sağlar. Java, C, C++ ve Swift statik tipli dillere örnek olarak verilebilir.

Örneğin, Java'da bir değişken tanımlarken türünü belirtmemiz gerekmektedir:

```java

    int sayi = 5;

```

## Dinamik Tip

Dinamik tipte ise, değişkenlerin türü, programın çalışma zamanında belirlenir. Bu, daha az kod yazmamıza olanak sağlar ve daha esnek olmamızı sağlar. Ancak, bu esneklik tip hatalarını daha zor tespit edilebilir hale getirir. Python, Ruby, PHP ve JavaScript dinamik tipli dillere örnektir.

Python'da bir değişkeni tanımlarken, türünü belirtmemize gerek yoktur:

```python

    sayi = 5

```

## Generic Programlama Nedir?

Generic programlama, kodun belirli türlere bağımlı olmadan çalışabilmesini sağlar. Bu, kodun tekrar kullanılabilirliğini artırır ve tip güvenliğini sağlar. Generic'ler, statik tipli dillerin esneklik kazanmasına yardımcı olur. Java, C#, Swift gibi dillerde Generic programlama kullanılır.

Örneğin, Java'da bir liste oluştururken, listenin içinde ne tür bir veri tutacağını belirtmeliyiz:

```java

    List<String> isimler = new ArrayList<String>();

```

Ancak, bu liste sadece String türünde değerleri kabul eder. Eğer bizim bir liste oluşturmamız ve bu listenin farklı türleri kabul etmesi gerekiyorsa, generic'ler devreye girer:

```java

    List<?> herTurluListe = new ArrayList<>();

```

Bu liste her türden değeri kabul eder. Ancak unutmayın, generic programlama her ne kadar esneklik sağlasa da, gereksiz yere kullanıldığında karmaşıklığa yol açabilir.

## Önemli Notlar

- Statik ve dinamik tipli dillerin her birinin kendine özgü avantajları ve dezavantajları vardır. Birini diğerinden üstün olarak görmek yerine, her birinin hangi durumlarda daha iyi çalıştığını anlamak önemlidir.

- Generic programlama da, doğru durumda kullanıldığında kodu daha güvenli ve yeniden kullanılabilir hale getirebilir. Ancak, her durumda generic kullanmak, kodun karmaşıklığını artırabilir, okunabilirliğini azaltabilir ve projemizde Teknik borç oluşturabilir.

- Hangi tipi nerede ve ne zaman kullanacağımızı kod yaza yaza daha iyi anlayacağız.

Sonuç olarak, statik, dinamik ve generic kavramları, temiz kod yazmanın önemli bir parçasıdır. Bu kavramları anlamak ve doğru durumda kullanmak, kodunuzun kalitesini ve bakımını büyük ölçüde artırabilir.

Temiz kod hakkında daha fazla bilgi almak için Robert C. Martin'in "Clean Code" kitabını okumanızı öneririm. Ayrıca “teknik borç(technical debt)” ifadesini de araştırmanız güzel olabilir.

Herkese temiz kodlamalar!