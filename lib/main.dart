import 'package:flutter/material.dart';
import 'halaman/splash_screen.dart';

void main() {
  runApp(AplikasiVolume());
}

class AplikasiVolume extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Kalkulator Volume Bangun Ruang",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SplashScreen(),
    );
  }
}
