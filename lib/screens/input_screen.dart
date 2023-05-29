import 'dart:math';

import 'package:flutter/material.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({Key? key}) : super(key: key);

  static const id = '/input_screen';

  @override
  State<InputScreen> createState() => _InputScreenState();
}

enum Gender { male, female }

class _InputScreenState extends State<InputScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Column(
        children: [],
      )),
    );
  }
}
