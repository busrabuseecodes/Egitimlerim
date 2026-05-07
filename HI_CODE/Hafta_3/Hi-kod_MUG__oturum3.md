
**1. Branch: Aynı projede birden fazla görev**
varsa bu görevlerin yazımı ayrı yerlerde
bulunur. Bunların her biri branch'tir.
▪ Git branch branchadı (branchadı adlı yeni branch açmak)
▪ Git branch (Mevcut bütün branchleri görmek)
▪ Git switch branch2 (branch2 adlı branch'e geçiş
yapmak)

![alt text](image-1.png)

## Merge
- git merge: 2 branch'i birleştirmek için kullanılır.
- **Head: Bulunduğumuz yeri işaret eden yapı**

**Git örneği**
Bu senaryoda ilk commit atıldı ve master branch'i otomatik oluştu.
Sonrasında:
• Feat adlı yeni bir branch oluşturduk.
![alt text](image-2.png)

- **Yeni branch'te commit attık**
![alt text](image-3.png)

- **Yeni branch'e bir tane daha commit attık**
![alt text](image-4.png)

- **Master branch'ine geçtik**
![alt text](image-5.png)

- **Master branch'ine commit attık**
![alt text](image-6.png)

- **Master branch'ine bir commit daha açtık**
![alt text](image-7.png)

- **Master'dayken feat branch'iyle master branch'ini birleştirdik**
![alt text](image-8.png)

## Git reset
Git reset --hard HASHID
• HashID'deki commit'e döner. Projeden de sildiğin commitlerin değişiklikleri silinir.

## Git checkout
• Eğer son değişikliği comitlemişsek ve git log'dan elde ettiğimiz commit hash'indeki değişikliğe dönmek istiyorsak :
Git checkout COMMITID (HASH)

![alt text](image-9.png)

## Git Remote
Git'te origin, genellikle uzak depoya verilen varsayılan isimdir. Uzak depo, yerel Git deposunun bağlı olduğu ve genellikle başka bir sunucuda veya depolama alanında bulunan bir depodur. origin, bu uzak depoyu tanımlamak için kullanılan bir kısayoldur.

**Uzak Depoları Listeleme:**
- git remote -v

**Yeni Uzak Depo Ekleme:**
- git remote add upstream https://github.com/another/repo.git

**Uzak Depoyu Yeniden Adlandırma:**
- git remote rename origin new-origin

## Git'le kodunuzu github hesabınıza pushlamak
- Git'e remote ekledikten sonra
- Git push –u origin branchadı (güncel branch'i github'a yolladık.

## Git'le remote'daki kodu local'e çekmek

**git fetch:** Uzak bir depodaki değişiklikleri yerel depoya getiririz, ancak yerel dosyalarımızı değiştirmez. Bu,başkalarının yaptığı değişiklikleri görmek ve analiz etmek için kullanışlıdır, ancak yerel dosyalarınızı değiştirmeden önce onları incelemek için kullanabiliriz.
    - git fetch origin

**git pull:** Uzak bir depodan (genellikle bir sunucu veya başka bir kullanıcının depo) yeni değişiklikleri almak için kullanılan bir işlemdir. Bu işlemle, uzak depodaki değişiklikler lokal depoya getirilir.
Pull=fetch+merge
git pull origin master

## Github'tan başka bir kişinin repository'sini kendi bilgisayarımıza klonlamak

**Clone:**
Git clone repositoryLink

- Fork: Başkasının projesini alıp kaynak projeden ayrı kendim geliştirip kendi hesabıma yükleyebilirim. Kaynak projeyle bir bağlantısı kalmaz.
    - Github->Proje->Fork

## Git Clone ve Git pull arasındaki farklar
**GİT CLONE**
- Uzak bir depoyu yerel bilgisayarınıza kopyalamak için kullanılır.
- Bu komut, belirttiğiniz uzak depodaki tüm dosyaları, dizin yapısını ve commit geçmişini indirir ve yerel bir depo oluşturur.
- git clone
    - https://github.com/user/repo.git

**GİT PULL**
- Mevcut bir yerel depo ile uzak depo arasındaki değişiklikleri senkronize etmek için kullanılır.

- Bu komut, uzak depodan değişiklikleri indirir ve yerel depo ile birleştirir

- git pull origin main
---

## ANDROİD STUDİO VE FLUTTER SDK KURULUMU
Flutter kurulum linki
Flutter SDK & Android Studio & Visual studio Code kurulumu

![alt text](image-10.png)
![alt text](image-11.png)
![alt text](image-12.png)


# Flutter Kurulum Klavuzu & Teknik Kurulum Protokolü

Bu döküman, Flutter SDK ve bağımlı araçların optimize edilmiş kurulum adımlarını içerir.

## 1. Flutter SDK İndirme
Flutter'ın çekirdek dosyalarını sistemine entegre etmenin ilk adımıdır.

* **Resmi Kurulum Sayfası:** [docs.flutter.dev/get-started/install](https://docs.flutter.dev/get-started/install)
* **Windows Doğrudan İndirme:** [Flutter Windows Stable](https://storage.googleapis.com/flutter_infra_release/releases/stable/windows/flutter_windows_3.19.0-stable.zip)
    * *Not: Bu sürüm zamanla güncellenir; her zaman en güncel stabil (stable) sürümü kullanmak teknik borcu azaltır.*

---

## 2. Ortam Değişkenleri (Environment Variables) Yapılandırması
SDK'nın terminal üzerinden global olarak erişilebilir olması için `bin` klasörünün sisteme tanıtılması şarttır.

1.  **Dizin Seçimi:** İndirdiğin dosyaları `C:\src\flutter` gibi bir dizine çıkar. 
    * **Kritik Uyarı:** ASLA `C:\Program Files` içine kurulum yapma; Windows izin protokolleri (UAC) yazma hatalarına neden olur.
2.  **PATH Tanımlama:**
    * Windows arama çubuğuna **"Sistem ortam değişkenlerini düzenleyin"** yaz.
    * `Ortam Değişkenleri` butonuna tıkla.
    * `Sistem değişkenleri` altındaki **Path** satırını bul ve `Düzenle` de.
    * `Yeni` butonuna basarak `C:\src\flutter\bin` yolunu ekle.

---

## 3. Teknik Denetim: `flutter doctor`
Sistemdeki eksik bileşenleri ve konfigürasyon hatalarını analiz etmek için terminale şu komutu gir:

```bash
flutter doctor
```

### 4. Gerekli IDE ve Araçlar
Geliştirme ekosistemini tamamlamak için aşağıdaki araçların kurulumu zorunludur:

* **[Android Studio](https://developer.android.com/studio):** Android emülatörü ve SDK Build-tools yönetimi için temel gereksinimdir.
* **[Visual Studio Code](https://code.visualstudio.com/):** Hafif ve performanslı bir IDE tercih edenler için önerilir. (Marketplace üzerinden Flutter ve Dart eklentileri yüklenmelidir).
* **[Git](https://git-scm.com/):** Projenin versiyon geçmişini yönetmek ve terminal üzerinden kontrol sağlamak için kullanılan standart araçtır.

## 💡 Mühendislik Tavsiyeleri & Optimizasyon
- **Lisans Onayı:** Kurulum sonrası terminalde flutter doctor --android-licenses komutunu çalıştır ve gelen tüm lisansları y ile onayla. Aksi takdirde build süreçleri bloklanır.

- **Performans (RAM Yönetimi):** Android emülatörleri yüksek kaynak tüketir. Bellek yönetimini optimize etmek için fiziksel bir cihaz (örneğin Infinix telefonun) kullanman önerilir.

- **Ayar:** Geliştirici Seçenekleri > USB Hata Ayıklama (USB Debugging) modunu aktif et.