import 'dart:math';

import 'package:bmi_starting/constants/constants.dart';
import 'package:bmi_starting/widgets/select_gender_widget.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({Key? key}) : super(key: key);

  static const id = '/input_screen';

  @override
  State<InputScreen> createState() => _InputScreenState();
}

enum Gender { male, female }

class _InputScreenState extends State<InputScreen> {
  Gender selectedGender = Gender.male;
  int height = 175;
  int weight = 60;
  int age = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: SelectGenderWidget(
                  color: selectedGender == Gender.male
                      ? kActiveColor
                      : kInActiveColor,
                  icon: Icons.male_rounded,
                  text: 'Male',
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                ),
              ),
              Expanded(
                flex: 1,
                child: SelectGenderWidget(
                  color: selectedGender == Gender.female
                      ? kActiveColor
                      : kInActiveColor,
                  icon: Icons.female_rounded,
                  text: 'Female',
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                ),
              )
            ],
          ),
        ],
      )),
    );
  }
}