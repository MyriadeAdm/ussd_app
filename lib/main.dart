import 'package:flutter/material.dart';
import 'package:ussd_app/base.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Base(),
    );
  }
}