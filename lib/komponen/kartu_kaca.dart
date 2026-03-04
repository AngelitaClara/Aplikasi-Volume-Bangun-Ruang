import 'dart:ui';
import 'package:flutter/material.dart';

class KartuKaca extends StatelessWidget {
  final Widget isi;

  KartuKaca({required this.isi});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),

      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),

        child: Container(
          padding: EdgeInsets.all(20),

          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            borderRadius: BorderRadius.circular(20),
          ),

          child: isi,
        ),
      ),
    );
  }
}
