import 'package:first_ieee/screens/Onboarding_Screen.dart';
import 'package:first_ieee/screens/Splash_Screen.dart';
import 'package:first_ieee/screens/gender.dart';
import 'package:first_ieee/screens/login_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp(),);
  }

  class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
      return  MaterialApp(
        home: SplashScreen(),

      );
    }
  }


