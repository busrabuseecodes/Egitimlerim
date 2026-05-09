void main() {
  // Temel veri tipleri ile değişken tanımlama
  int yas = 15;
  int yil = 2014;
  double notOrtalama = 87.50;
  double sicaklik = 27.0;
  String isim = 'Beyza';
  String ders = 'Matematik';
  bool sinifDolumu = true;
  bool haftaBirGunMu = false;

  print('Yaş: $yas');
  print('Yıl: $yil');
  print('Not Ortalaması: $notOrtalama');
  print('Sıcaklık: $sicaklik');
  print('İsim: $isim');
  print('Ders: $ders');
  print('Sınıf dolu mu? $sinifDolumu');
  print('Hafta bir gün mü? $haftaBirGunMu');

  // Değer atamak zorunda değiliz, sonradan da atayabiliriz
  int yeniYas;
  yeniYas = 25;
  print('Yeni yaş: $yeniYas');

  // var ve const farkı
  var a = 10; // değiştirilebilir
  const b = 20; // sabit, sonradan değiştirilemez

  print('var a: $a');
  print('const b: $b');

  // Toplama örneği
  var x = 10;
  var y = 20;
  print('$x ve $y nin toplamı: ${x + y}');
}