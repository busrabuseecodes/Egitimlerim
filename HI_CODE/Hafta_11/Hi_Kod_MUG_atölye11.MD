# 📱 Flutter Widget Örnekleri

## 🔘 SwitchListTile
```dart
SwitchListTile(
  value: isSwitched,
  onChanged: (SwitchData) {
    setState(() {
      isSwitched = SwitchData;
    });
  },
  activeColor: Colors.deepPurple,
  title: Text(
    'Sigara içiyor musunuz?',
    style: TextStyle(color: Colors.white),
  ),
  tileColor: Colors.orange,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12),
  ),
)
```
![alt text](image.png)

## Slider
```dart
Slider(
  value: slide,
  min: 0,
  max: 30,
  divisions: 10,
  onChanged: (double value) {
    setState(() {
      slide = value;
    });
  },
  label: slide.toString(),
)
```
![alt text](image-1.png)

## 🔘 Flutter Buttons
```dart
ElevatedButton(
  style: ElevatedButton.styleFrom(
    foregroundColor: Colors.white,
    backgroundColor: Colors.blue,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
    ),
  ),
  onPressed: () {
    print('Butona basıldı');
  },
  child: Text('Butona Bas'),
)
```
**outlinedbutton ElevatedButton TextButton**
![alt text](image-2.png)

## ⬇️ Dropdown Button
```dart
String selectedGender = 'none';

DropdownButton(
  value: selectedGender,
  onChanged: (_gender) {
    setState(() {
      selectedGender = _gender!;
    });
  },
  items: <DropdownMenuItem<String>>[
    DropdownMenuItem(child: Text("Lütfen Cinsiyet seçiniz."), value: 'none'),
    DropdownMenuItem(child: Text("Kadın"), value: 'kadın'),
    DropdownMenuItem(child: Text("Erkek"), value: 'erkek'),
  ],
)
```
![alt text](image-3.png)
---

## ➕ Floating Action Button
```dart
floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
floatingActionButton: FloatingActionButton(
  backgroundColor: Colors.deepPurple,
  focusColor: Colors.lightBlue,
  foregroundColor: Colors.blue,
  child: const Icon(Icons.add),
  onPressed: () {
    print('Floating Action Button\'a basıldı.');
  },
),
```
![alt text](image-4.png)
---

## ➖ Divider
• Elemanları ayırmak için aralarına bir çizgi çekmek istiyorsak bu elemanı kullanabiliriz.
```dart
Divider(
  color: Colors.indigo, // Divider'ın rengi
  height: 5,            // Divider'ın kalınlığı
)
```
![alt text](image-5.png)

## 📋 ListView
```dart
Expanded(
  child: ListView.builder(
    itemCount: 100,
    itemBuilder: (context, index) {
      return ListTile(
        leading: Icon(Icons.person),
        title: Text('Person $index'),
      );
    },
  ),
)
```
# 🔀 Sayfa Geçişi (Routing)
Mobil uygulamalar genellikle birden fazla sayfadan oluşur.Flutter’da sayfa geçişleri için **Navigator** kullanılır.biz bu uygualamnın
belirli ihtiyaçları doğrusunda sayfalar arasında routing dediğimiz gezme işlemini
yapabiliriz.

## Context?
Context'in spesifik anlamları olsa da sayfa geçişlerinde context, geçerli widget'ın
bulunduğu pozisyonu temsil eder.
Navigator bir **stack (yığın)** mantığıyla çalışır: yeni sayfalar üst üste eklenir, geri dönmek için çıkarılır.sayfalar bu yığının üstüne eklenir veya çıkarılır.  context, Navigator'ün hangi yığını yönetmesi gerektiğini belirtir.

**Önemli Metodlar**
- Navigator.push

- Navigator.pop

- Navigator.pushReplacement

- Navigator.popUntil

- Navigator.pushNamed

**Örnek**
```dart
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => YeniSayfa()),
);

Navigator.pop(context);
```
---

**Navigator.push**
![alt text](image-6.png)

**Navigator.pop(context)**
![alt text](image-7.png)