```dart
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SurveyPage(),
    ),
  );
}

class SurveyPage extends StatefulWidget {
  @override
  State<SurveyPage> createState() => _SurveyPageState();
}

class _SurveyPageState extends State<SurveyPage> {

  String gender = "Kadın";
  bool smokes = true;
  double cigarettesPerDay = 17;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f0fa),

      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        title: Text(
          "Kişilik Anketi",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            children: [

              SizedBox(height: 10),

              // AD SOYAD KARTI
              Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [

                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.deepPurple.shade50,
                        child: Icon(
                          Icons.person,
                          color: Colors.deepPurple,
                          size: 35,
                        ),
                      ),

                      SizedBox(width: 20),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text(
                              "Adınız ve Soyadınız",
                              style: TextStyle(
                                color: Colors.deepPurple,
                                fontSize: 18,
                              ),
                            ),

                            SizedBox(height: 10),

                            TextField(
                              decoration: InputDecoration(
                                hintText: "Büşra Kurt",
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.deepPurple,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20),

              // CİNSİYET
              Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [

                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.deepPurple.shade50,
                        child: Icon(
                          Icons.female,
                          color: Colors.deepPurple,
                          size: 35,
                        ),
                      ),

                      SizedBox(width: 20),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text(
                              "Lütfen cinsiyetinizi seçiniz:",
                              style: TextStyle(
                                color: Colors.deepPurple,
                                fontSize: 18,
                              ),
                            ),

                            DropdownButton<String>(
                              isExpanded: true,
                              value: gender,
                              underline: SizedBox(),
                              items: ["Kadın", "Erkek"].map((g) {
                                return DropdownMenuItem(
                                  value: g,
                                  child: Text(
                                    g,
                                    style: TextStyle(fontSize: 20),
                                  ),
                                );
                              }).toList(),
                              onChanged: (val) {
                                setState(() {
                                  gender = val!;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20),

              // SWITCH
              Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [

                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.deepPurple.shade50,
                        child: Icon(
                          Icons.smoking_rooms,
                          color: Colors.deepPurple,
                          size: 35,
                        ),
                      ),

                      SizedBox(width: 20),

                      Expanded(
                        child: Text(
                          "Sigara içiyor musunuz?",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.deepPurple,
                          ),
                        ),
                      ),

                      Switch(
                        value: smokes,
                        activeColor: Colors.deepPurple,
                        onChanged: (val) {
                          setState(() {
                            smokes = val;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20),

              // SLIDER
              Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [

                      Row(
                        children: [

                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.deepPurple.shade50,
                            child: Icon(
                              Icons.bar_chart,
                              color: Colors.deepPurple,
                              size: 35,
                            ),
                          ),

                          SizedBox(width: 20),

                          Text(
                            "Günde kaç sigara içiyorsunuz?",
                            style: TextStyle(
                              color: Colors.deepPurple,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 20),

                      Slider(
                        value: cigarettesPerDay,
                        min: 0,
                        max: 40,
                        divisions: 40,
                        activeColor: Colors.deepPurple,
                        inactiveColor: Colors.grey.shade300,
                        onChanged: (val) {
                          setState(() {
                            cigarettesPerDay = val;
                          });
                        },
                      ),

                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple.shade50,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [

                            Text(
                              cigarettesPerDay.toStringAsFixed(0),
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.deepPurple,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Text(
                              "sigara",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.deepPurple,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 35),

              // BUTON
              SizedBox(
                width: double.infinity,
                height: 65,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35),
                    ),
                  ),
                  onPressed: () {},
                  icon: Icon(Icons.send, color: Colors.white),
                  label: Text(
                    "VERİLERİ GÖNDER",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}