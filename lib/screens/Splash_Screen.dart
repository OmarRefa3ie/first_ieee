import 'dart:async';
import 'package:first_ieee/screens/Onboarding_Screen.dart';
import 'package:first_ieee/screens/gender.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => gender()),);
      },
    );
    /*checkSeen();*/
    // TODO: implement initState
    super.initState();
  }
  /*void checkSeen() async {
    final prefs = await SharedPreferences.getInstance();
    bool seen = prefs.getBool("seenOnboarding") ?? false;

    await Future.delayed(const Duration(seconds: 3));

    if (seen) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => gender()),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => OnBoardingScreen()),
      );
    }
  }*/


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Column(
        children: [
          Expanded(
              child: Center(
                child:Image.asset("images/BMI Calculator.png"),
              )
          ),
        ],
      ),
    );
  }
}
