import 'package:flutter_test/flutter_test.dart';

import 'package:aplikasi_volume_bangun_ruang/main.dart';

void main() {
  testWidgets('Aplikasi Kalkulator Volume tampil', (WidgetTester tester) async {
    // Menjalankan aplikasi
    await tester.pumpWidget(AplikasiVolume());

    // Mengecek apakah teks muncul di aplikasi
    expect(find.textContaining('Kalkulator'), findsWidgets);
  });
}
