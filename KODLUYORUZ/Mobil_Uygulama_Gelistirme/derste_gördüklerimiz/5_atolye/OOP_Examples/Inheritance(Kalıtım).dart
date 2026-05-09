// Kalıtım örneği
class Hayvan {
  void sesCikar() {
    print('Hayvan ses çıkarır.');
  }
}

class Kopek extends Hayvan {
  @override
  void sesCikar() {
    print('Hav hav!');
  }
}