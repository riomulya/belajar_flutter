import 'package:flutter/material.dart';
import 'package:latihan_pertama/profile.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My App',
      home: Profile(),
    );
  }
}
