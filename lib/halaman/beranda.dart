import 'package:flutter/material.dart';
import 'kalkulator_volume.dart';

class Beranda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEF2F7),

      body: Center(
        child: Padding(
          padding: EdgeInsets.all(30),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.calculate, size: 100, color: Colors.blue),

              SizedBox(height: 30),

              Text(
                "Kalkulator Volume\nBangun Ruang",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 40),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => KalkulatorVolume()),
                  );
                },

                child: Text("Mulai Menghitung", style: TextStyle(fontSize: 18)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
