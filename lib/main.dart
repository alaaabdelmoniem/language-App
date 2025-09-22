import 'package:flutter/material.dart';
import 'package:laguageapp/views/selction_language.dart';

void main() {
  runApp(const LanguageApp());
}

class LanguageApp extends StatelessWidget {
  const LanguageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SelctionLanguage(),
    );
  }
}
