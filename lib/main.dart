import 'package:flutter/material.dart';
import 'calculator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'IndraDhanush BMI',
      debugShowCheckedModeBanner: false,
      home: BmiCalculator(title: 'BmiCalculator'),
    );
  }
}
