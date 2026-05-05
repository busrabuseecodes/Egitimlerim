# 2 ile 50 aralığındaki sayilarin asal olup olmadigini bulan programdir...


1. Sayı aralığını belirle.

2. İlk sayi 2 gir

3. Son sayiya 50 gir.

4. Mevcut sayiyi ilk sayi olarak al, yani mevcut sayiya 2 ata.

5. Aralıktaki herbir sayiyi sirayla alan bir döngü başlat.

6. Döngü; mevcut sayi, son sayidan küçük veya son sayiya eşit İKEN çalışmaya devam etsin.

7. Mevcut sayiyi her iterasyonda(her döngü bitip başa döndüğünde) 1 artır.

8. Döngü içerisinde mevcut sayiyi bölecek olan sayiyi mevcut_bolen olarak tanımla.

9. Döngü içinde mevcut_bolen'e değer olarak 2 atayalım. 

10. Aksi bulunana kadar kontrol ettiğimiz mevcut sayiyi asal olarak kabul edelim.

11. Mevcut sayinin asal olduğunu mevcut_sayi_asal_mi şeklinde tanımladığımız değişkene True değeri atamasıyla yapalım.

12. Böylece Döngü her başa döndüğünde kontrol ettiğimiz yeni mevcut sayi için mevcut_bolen 2 den başlasın ve asallığı True kabul edilsin.

13. Mevcut sayinin kendisine kadar bütün sayilari tek tek bölen olarak aldigi bir döngü oluşturalım.

14. Döngüyü başlatalım, mevcut bölen mevcut sayidan küçük olduğu sürece devam etmesini sağlayalım.

15.  Döngü içinde şu kontrolü yapalım; 
	EĞER mevcut sayi, mevcut bölene tam bölünüyorsa (bölme sonucu kalan sıfıra eşit ise) 
	mevcut sayinin asallik durumunu, mevcut_sayi_asal_mi değişkenini False olarak güncelleyerek değiştirelim.
        Asallik durumu False olunca bu kontrolü yapan döngüden ÇIKALIM. 16. adıma geç. 
        Mevcut sayinin mevcut bölene tam bölünmediği durumda mevcut böleni 1 artır ve 14.adıma git.

16. EĞER mevcut_sayi_asal_mi hala True ise ; "mevcut_sayi asaldir " yazdıralım.
       mevcut_sayi_asal_mi False olduğu durumlarda  "mevcut_sayi asal degildir " yazdıralım.

17. Bir sonraki sayinin asalligini kontrol etmek için mevcut sayiyi 1 artıralım ve ana döngü başa dönsün.
	Yani 6. adıma git.

18. Bütün sayilarin asalliğini kontrol eden ana döngü bittiyse ekrana "islem bitti" yazdır.

19. Programı sonlandır.

