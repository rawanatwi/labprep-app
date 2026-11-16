import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(const LabPrep());
}

class LabPrep extends StatelessWidget {
  const LabPrep({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
