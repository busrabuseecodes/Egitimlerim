# 📱 Mobil Uygulama Geliştirme Atölyesi - Hafta 7 Ödev

Bu hafta ödev olarak geçen hafta yaptığımız **anket uygulamasına** bir **sonuç sayfası** eklemeniz gerekiyor.  
Ankete girilen bilgiler bu sonuç sayfasına gönderilecek. Tasarım tamamen size kalmıştır.  
Dilerseniz aşağıdaki örneğe bağlı kalabilirsiniz.

---

## 📝 Kişilik Anketi Örneği
```dart
Column(
  children: [
    TextField(
      decoration: InputDecoration(labelText: "Adınız ve Soyadınız"),
    ),
    DropdownButton(
      value: selectedGender,
      onChanged: (_gender) {
        setState(() {
          selectedGender = _gender!;
        });
      },
      items: [
        DropdownMenuItem(child: Text("Kadın"), value: "kadın"),
        DropdownMenuItem(child: Text("Erkek"), value: "erkek"),
      ],
    ),
    SwitchListTile(
      title: Text("Sigara içiyor musunuz?"),
      value: isSmoker,
      onChanged: (val) {
        setState(() {
          isSmoker = val;
        });
      },
    ),
    Slider(
      value: cigarettesPerDay,
      min: 0,
      max: 30,
      divisions: 30,
      label: cigarettesPerDay.toString(),
      onChanged: (val) {
        setState(() {
          cigarettesPerDay = val;
        });
      },
    ),
    ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ResultPage()),
        );
      },
      child: Text("Verileri Gönder"),
    ),
  ],
)
```
![alt text](image-8.png)

## 📊 Sonuç Sayfası Örneği
```dart
class ResultPage extends StatelessWidget {
  final String name;
  final String gender;
  final bool isSmoker;
  final double cigarettesPerDay;

  ResultPage({
    required this.name,
    required this.gender,
    required this.isSmoker,
    required this.cigarettesPerDay,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sonucunuz")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Ad ve Soyad: $name"),
            Text("Cinsiyet: $gender"),
            Text("Sigara içiyor musunuz?: ${isSmoker ? "Evet" : "Hayır"}"),
            Text("Günde kaç sigara içiyorsunuz?: $cigarettesPerDay"),
          ],
        ),
      ),
    );
  }
}
```
![alt text](image-9.png)
---
📧 İletişim
Her türlü sorunuz için: beyzayalvac@kodluyoruz.org  
veya Discord sunucusu üzerinden iletişime geçebilirsiniz.
