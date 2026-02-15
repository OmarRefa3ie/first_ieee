import 'package:first_ieee/screens/gender.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Welcome",
          body: "This is the best app for you",
          image: Image.asset("assets/image1.png"),
        ),
        PageViewModel(
          title: "Fast Delivery",
          body: "Get your order in 30 minutes",
          image: Image.asset("assets/image2.png"),
        ),
        PageViewModel(
          title: "Easy Payment",
          body: "Multiple payment methods",
          image: Image.asset("assets/image3.png"),
        ),
      ],

      showSkipButton: true,
      skip: const Text("Skip"),
      next: const Icon(Icons.arrow_forward),
        done: const Text("Done"),

        onDone: () async {

          final prefs = await SharedPreferences.getInstance();
          await prefs.setBool("seenOnboarding", true);

          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) =>gender()),
          );
        },
      onSkip: () async {
        final prefs = await SharedPreferences.getInstance();
        await prefs.setBool("seenOnboarding", true);

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => gender()),
        );
      },
    );
  }
}