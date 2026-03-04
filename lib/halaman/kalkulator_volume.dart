import 'package:flutter/material.dart';

class KalkulatorVolume extends StatefulWidget {
  const KalkulatorVolume({super.key});

  @override
  State<KalkulatorVolume> createState() => _KalkulatorVolumeState();
}

class _KalkulatorVolumeState extends State<KalkulatorVolume> {
  int bangun = 0;

  final TextEditingController sisi = TextEditingController();
  final TextEditingController jari = TextEditingController();
  final TextEditingController tinggi = TextEditingController();

  double hasil = 0;

  void hitungVolume() {
    if (bangun == 0) {
      double s = double.parse(sisi.text);
      hasil = s * s * s;
    }

    if (bangun == 1) {
      double r = double.parse(jari.text);
      double t = double.parse(tinggi.text);
      hasil = 3.14 * r * r * t;
    }

    if (bangun == 2) {
      double r = double.parse(jari.text);
      double t = double.parse(tinggi.text);
      hasil = (1 / 3) * 3.14 * r * r * t;
    }

    setState(() {});
  }

  Widget tombolBangun(String teks, int index) {
    bool aktif = bangun == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          bangun = index;
        });
      },

      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),

        decoration: BoxDecoration(
          color: aktif ? Colors.blue : Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),

        child: Text(
          teks,
          style: TextStyle(
            color: aktif ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget kotakRumus(String rumus) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      padding: EdgeInsets.all(15),

      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.blue),
      ),

      child: Column(
        children: [
          Text(
            "Rumus Volume",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.blue,
            ),
          ),

          SizedBox(height: 5),

          Text(
            rumus,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget infoBangun() {
    if (bangun == 0) {
      return Column(
        children: [
          Image.asset("assets/gambar/kubus.png", height: 120),

          SizedBox(height: 10),

          Text(
            "Kubus adalah bangun ruang tiga dimensi yang dibatasi oleh enam sisi berbentuk persegi yang sama besar. "
            "Kubus memiliki 12 rusuk yang sama panjang dan 8 titik sudut.",
            textAlign: TextAlign.center,
          ),

          kotakRumus("V = s × s × s  atau  V = s³"),
        ],
      );
    }

    if (bangun == 1) {
      return Column(
        children: [
          Image.asset("assets/gambar/tabung.png", height: 120),

          SizedBox(height: 10),

          Text(
            "Tabung adalah bangun ruang tiga dimensi yang memiliki dua sisi berbentuk lingkaran "
            "sebagai alas dan tutup serta satu sisi lengkung yang disebut selimut tabung.",
            textAlign: TextAlign.center,
          ),

          kotakRumus("V = π × r² × t"),
        ],
      );
    }

    return Column(
      children: [
        Image.asset("assets/gambar/kerucut.png", height: 120),

        SizedBox(height: 10),

        Text(
          "Kerucut adalah bangun ruang tiga dimensi yang memiliki satu alas berbentuk lingkaran "
          "dan satu titik puncak di bagian atas.",
          textAlign: TextAlign.center,
        ),

        kotakRumus("V = 1/3 × π × r² × t"),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Kalkulator Volume")),

      body: Padding(
        padding: EdgeInsets.all(20),

        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  tombolBangun("Kubus", 0),
                  tombolBangun("Tabung", 1),
                  tombolBangun("Kerucut", 2),
                ],
              ),

              SizedBox(height: 20),

              infoBangun(),

              SizedBox(height: 30),

              if (bangun == 0)
                TextField(
                  controller: sisi,
                  keyboardType: TextInputType.number,

                  decoration: InputDecoration(
                    labelText: "Masukkan panjang sisi",
                    border: OutlineInputBorder(),
                  ),
                ),

              if (bangun != 0)
                Column(
                  children: [
                    TextField(
                      controller: jari,
                      keyboardType: TextInputType.number,

                      decoration: InputDecoration(
                        labelText: "Masukkan jari-jari",
                        border: OutlineInputBorder(),
                      ),
                    ),

                    SizedBox(height: 10),

                    TextField(
                      controller: tinggi,
                      keyboardType: TextInputType.number,

                      decoration: InputDecoration(
                        labelText: "Masukkan tinggi",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),

              SizedBox(height: 30),

              ElevatedButton(
                onPressed: hitungVolume,
                child: Text("Hitung Volume"),
              ),

              SizedBox(height: 30),

              Text(
                "Hasil Volume: $hasil",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
