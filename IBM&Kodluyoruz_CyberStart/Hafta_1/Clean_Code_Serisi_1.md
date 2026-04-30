# Temiz Kod (Clean Code)

## Giriş
Şimdiki yazımızda **Temiz Kod (Clean Code)** üzerine konuşacağız. Bu konunun ilk bölümünde **Değişken İsimlendirme** üzerinde duracağız. Hep beraber değişken isimlendirmeden önce temiz kodun önemine bir bakalım.

## Temiz Kodun Önemi
Temiz kodun önemi, yazılım geliştirmenin sadece kodu yazmak olmadığı gerçeğinden kaynaklanır. Kodun yazılmasından sonra, onu okuma, anlama, değiştirme ve bakımını yapma işlemi başlar.  
Kod bir kez yazılır ancak çok sayıda kez okunur. Kodun okunabilirliği ve anlaşılırlığı, kodu yazan kişi ile aynı olmayan kişiler tarafından anlaşılmasını kolaylaştırır.  
Dolayısıyla, temiz bir kod yazmak, projenin sağlıklı bir şekilde ilerlemesini ve geliştirilmesini sağlar.

- Temiz kod hataları azaltır.  
- Bakım maliyetini düşürür.  
- Hataların erken tespiti ve düzeltilmesi daha kolaydır.  
- Şirketler temiz kod yazan kişilerle çalışmak ister.

## Değişken İsimlendirme Neden Önemli?
İyi bir değişken ismi, kodun okunabilirliğini artırır ve hataların oluşmasını azaltır.  
Değişkenler, bilgisayar belleğinde değerleri saklamamıza yardımcı olan kutular gibidir. Bu kutulara isimler vererek içindekileri kolayca hatırlayabiliriz. Ancak bu isimlerin **anlamlı ve açık** olması çok önemlidir.

## Temel Kurallar ve İpuçları

### 1. Anlamlı ve Açık İsimlendirme
İsimler, değişkenin neyi temsil ettiğini göstermelidir.  
- **Kötü örnek:** `d`  
- **İyi örnek:** `gunSayisi`  

### 2. Ne Kısa Ne Uzun
Değişken isimleri çok kısa veya çok uzun olmamalıdır.  
- **Kötü örnek:** `kms`  
- **İyi örnek:** `kilometreSayisi`  

### 3. Jargon Kullanmayın
Jargon, yalnızca belirli bir grup tarafından anlaşılır. Kod başkaları tarafından okunacaksa jargon kullanmaktan kaçının.  
- **Kötü örnek:** `serp`  
- **İyi örnek:** `aramaMotoruSiralamasi`  

### 4. Standartlara Uyun
Her dilin ve projenin kendi isimlendirme standartları vardır.  
- Python → `snake_case` (örn. `degisken_adi`)  
- Java → `camelCase` (örn. `degiskenAdi`)  

### 5. Boolean Değerler İçin Anlamlı İsimler
Durum belirten değişkenlerde `is`, `has`, `can` gibi ön ekler kullanın.  
- **Kötü örnek:** `durum`  
- **İyi örnek:** `isActive`  

## Sonuç
Bu kurallar, kodu okuyanların daha hızlı ve etkili bir şekilde anlamasını sağlar.  
Unutmayın: iyi bir yazılım geliştirici sadece makinelere değil, aynı zamanda insanlara da kod yazar.  

Herkese temiz kodlamalar! 🚀

## Kaynak
- Uncle Bob – *Clean Code* kitabı
