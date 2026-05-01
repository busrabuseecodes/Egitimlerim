# Temiz Kod Prensipleri ve Yazılım Mimarisi
Hocanın noptlarına göre yazmak zaanatkarlıktır; sadece çalışması yetmez, "temiz" olamlıdır.

1. **Değişken İsimlendirme (Clean Code Bölüm 1)
* **Anlamlı İsimler:** 'd' yerine 'elapsedTimeInDsys' veya 'gunSayisi' (tercihen İngilizce) kullanılmalıdır.
* ** Aranabilir İsimler**: Kodda '7' rakamını aramak zordur ama 'MAX_LOGIN_ATTEMPTS' sabit kolayca bulunur.
* **Boolean İsimlendirme:** 'is','has','can' gibi eklerle durum belirtilmelidir: 'isActive','isLoggedIn'.

2. **Mimari Kararlar: Statik vs. Dinamik**
Statik (Java, C#): Değişken tipi kod yazılırken bellidir. Hatalar daha erken (derleme zamanında) yakalanır.

Dinamik (Python, JS): Tip kontrolü program çalışırken yapılır. Esneklik sağlar ama hata riski daha yüksektir.

3. Generic Programlama (Genelleyiciler)
Aynı kodu her veri tipi için ayrı ayrı yazmamak için bir "şablon" oluşturmaktır.

Java (Type Erasure): Derleme bittikten sonra tip bilgisini "siler", yerlerine Object koyar.  

C# (Reification): Tip bilgisini çalışma zamanında da korur, bu da performansı artırır.  

4. Teknik Borç (Technical Debt)
"Hızlı bitsin de sonra refactor ederiz" diyerek yazdığımız her kalitesiz kod bir borçtur.

Faizi: İleride o kodu düzeltmek için harcayacağın ekstra zaman ve maliyettir.