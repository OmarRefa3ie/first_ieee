import 'package:first_ieee/screens/CardScreen.dart';
import 'package:first_ieee/screens/ResturantScreen.dart';
import 'package:first_ieee/screens/WhatsAppScreen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp(),);

  }

  class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
      return  MaterialApp(
        home: ResturantScreen(),
        themeMode: ThemeMode.dark ,
        darkTheme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.blue,
          ),
          scaffoldBackgroundColor: Colors.grey,
        ),
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.blueAccent,
          ),
          scaffoldBackgroundColor: Colors.red,
        ),
      );
    }
  }


