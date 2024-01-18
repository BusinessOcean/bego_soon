import 'package:bego_soon/styles/colors.dart';
import 'package:flutter/material.dart';

final appTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: primary),
  useMaterial3: true,
);

final subtitleColor = Colors.grey.shade700;

const titleStyle = TextStyle(
  color: Colors.black,
  fontSize: 32,
  fontWeight: FontWeight.bold,
);

final buttonStyle = ElevatedButton.styleFrom(
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
  ),
  backgroundColor: Colors.black,
  foregroundColor: Colors.white,
  fixedSize: const Size(160, 48),
);
