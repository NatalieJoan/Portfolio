import 'package:flutter/material.dart';

class AppColors {
  static Gradient yellowGradient = const LinearGradient(
      begin: Alignment(-0.34, 0.50),
      end: Alignment(1.34, 0.50),
      colors: [
        Color(0xFFFFE394),
        Color(0xFFE9BE94),
        Color(0xFFD69A5F),
      ],
    );

  static Gradient purpleGradient = const LinearGradient(
    begin: Alignment(-0.34, 0.50),
    end: Alignment(1.34, 0.50),
    colors: [
      Color(0xFF8285C8),
      Color(0xFF6331C6),
      Color(0xFF8231B2),
    ],
  );
}