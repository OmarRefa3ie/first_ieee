import 'package:flutter/material.dart';

const Color kPrimaryGreen = Color(0xFF67BF4E);
const Color kBrownColor   = Color(0xFFD48C45);
const Color kBgColor      = Color(0xFFF8F8F8);
const Color kMaleBg       = Color(0xFFE8F5E9);
const Color kFemaleBg     = Color(0xFFFFF3E0);

class BMICategory {
  final String title;
  final String range;
  final String advice;
  final Color color;

  const BMICategory({
    required this.title,
    required this.range,
    required this.advice,
    required this.color,
  });
}

List<BMICategory> bmiCategories = [

  BMICategory(
    title: "Severe Thinness",
    range: "< 16.0",
    advice: "You are severely underweight. Please consult a doctor immediately.",
    color: Colors.red[900]!,
  ),

  BMICategory(
    title: "Underweight",
    range: "16.0 - 18.5",
    advice: "You are underweight. Try to eat more protein and healthy fats.",
    color: Colors.blue,
  ),

  BMICategory(
    title: "Normal",
    range: "18.5 - 25.0",
    advice: "You have a normal body weight. Good job! Keep it up.",
    color: kPrimaryGreen,
  ),

  BMICategory(
    title: "Overweight",
    range: "25.0 - 30.0",
    advice: "You are slightly overweight. Try to exercise more.",
    color: kBrownColor,
  ),

  BMICategory(
    title: "Obese",
    range: "> 30.0",
    advice: "You are in the obese range. Please consider a strict diet plan.",
    color: Colors.red,
  ),
];

BMICategory getBMIResult(double bmi) {
  if (bmi < 16.0) return bmiCategories[0];
  if (bmi < 18.5) return bmiCategories[1];
  if (bmi < 25.0) return bmiCategories[2];
  if (bmi < 30.0) return bmiCategories[3];
  return bmiCategories[4];
}