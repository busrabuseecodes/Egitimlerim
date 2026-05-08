Şimdiki yazımızda "Temiz Kod (Clean Code)" üzerine konuşacağız. Bu konunun ilk bölümünde "Değişken İsimlendirme" üzerinde duracağız. Hep beraber değişken isimlendirmeden önce temiz kodun önemine bir bakalım.

Temiz kodun önemi, yazılım geliştirmenin sadece kodu yazmak olmadığı gerçeğinden kaynaklanır. Kodun yazılmasından sonra, onu okuma, anlama, değiştirme ve bakımını yapma işlemi başlar. Kod, bir kez yazılır ancak çok sayıda kez okunur. Kodun okunabilirliği ve anlaşılırlığı, kodu yazan kişi ile aynı olmayan kişiler tarafından anlaşılmasını kolaylaştırır. Dolayısıyla, temiz bir kod yazmak, projenin sağlıklı bir şekilde ilerlemesini ve geliştirilmesini sağlar.

Temiz kod, hataları azaltır ve kodun bakım maliyetini düşürür. Hızlı ve düşüncesizce yazılmış bir kodun bakımı, temiz bir şekilde yazılmış kodun bakımına göre çok daha pahalı olabilir. Hataların erken tespiti ve düzeltme süreci, temiz bir kodda daha hızlı ve kolaydır. Şirketler temiz kod yazan kişilerle beraber çalışmak ister.

Peki neden değişken isimlendirme bu kadar önemli? İyi bir değişken ismi, kodun okunabilirliğini artırır ve hataların oluşmasını azaltır.

Öncelikle, değişkenlerin ne olduğunu hatırlayalım. Değişkenler, bilgisayar belleğinde değerleri saklamamıza yardımcı olan bir tür kutu gibidir. Kodumuzda bu kutulara isimler vererek, içindekileri daha sonra kolayca hatırlayabilir ve çağırabiliriz. Ancak, bu isimlerin anlamlı ve açık olması çok önemlidir.

Şimdi, etkili bir değişken isimlendirme için bazı temel kurallar ve ipuçlarına bakalım:

Anlamlı ve Açık İsimlendirme: İsimler, değişkenin neyi temsil ettiğini anlamanıza yardımcı olmalıdır. Örneğin, x ve y yerine boy ve kilo gibi isimler daha anlamlıdır.

Kötü örnek: d (ne olduğu belirsiz)

İyi örnek: gunSayisi (Bu isim, değişkenin neyi temsil ettiğini açıkça gösterir. Örnek için Türkçe yazdık, lütfen siz isimlendirmelerinizi İngilizce yapın)

Değişken İsmi Ne Kısa Ne Uzun Olmalı: Değişken isimlerinizin ne çok kısa ne de çok uzun olmasına dikkat edin. Kısa isimler genellikle anlamı belirsizken, çok uzun isimler okunabilirliği azaltır.

**Kötü örnek:** kms (anlaşılması zor)

**İyi örnek:** kilometreSayisi (anlamlı ve okunabilir)

- **Jargon Kullanmayın:** Jargon, yalnızca belirli bir grup insan tarafından anlaşılan teknik dildir. Kodunuz başkaları tarafından okunacaksa, değişken isimlerinde jargon kullanmaktan kaçının. Herkesin anlayabileceği kısaltmalar bir sorun oluşturmamakta (res(respond), req (request) …).

Kötü örnek: serp (bu isim, anlamı bilmeyen birine anlamsız gelebilir)

İyi örnek: aramaMotoruSiralamasi (bu isim, değişkenin neyi temsil ettiğini açıkça gösterir)

Standartlara Uyun: Her dilin ve projenin kendi isimlendirme standartları vardır. Bunlara uymak, kodunuzun okunabilirliğini artırır. Python'da genellikle snake_case (örn. degisken_adi), Java'da ise camelCase (örn. degiskenAdi) kullanılır.

Boolean Değerler İçin Anlamlı İsimler Kullanın: Boolean değerleri temsil eden değişkenler genellikle bir durumu ifade eder. Bu tür değişkenler için is, has, can gibi ön ekler kullanmak kodun anlaşılırlığını artırır.

Kötü örnek: durum (ne tür bir durum olduğu belirsiz)

İyi örnek: isActive (bu isim, durumun ne olduğunu belirtir)

Bu temel kurallar, kodumuzu okuyanların daha hızlı ve etkili bir şekilde neyi ifade ettiğimizi anlamalarını sağlar. Unutmayın, iyi bir yazılım geliştirici sadece makinelere değil, aynı zamanda insanlara da kod yazmayı bilir. Herkese temiz kodlamalar!

Temiz kod hakkında kaynak önerisi olarak Uncle Bob - Clean Code kitabını vermekteyiz. Göz atmak isteyebilirsiniz 😊

