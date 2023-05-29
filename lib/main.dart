import 'package:bmi_starting/screens/input_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      initialRoute: InputScreen.id,
      routes: {InputScreen.id: (context) => const InputScreen()},
    );
  }
}
