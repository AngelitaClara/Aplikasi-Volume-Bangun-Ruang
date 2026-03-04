import 'package:flutter/material.dart';

class TombolTab extends StatelessWidget {
  final String teks;
  final bool aktif;
  final Function() saatDitekan;

  TombolTab({
    required this.teks,
    required this.aktif,
    required this.saatDitekan,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: saatDitekan,

      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),

        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),

        decoration: BoxDecoration(
          color: aktif ? Colors.blue : Colors.grey[200],
          borderRadius: BorderRadius.circular(12),
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
}
