import 'package:awesome_sounds/global/const.dart';
import 'package:awesome_sounds/screens/home_page.dart';
import 'package:awesome_sounds/screens/motivational.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Awesome Sounds',
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColor,
        fontFamily: "Poppins",
        iconTheme: const IconThemeData(color: primaryColor),
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: primaryColor),
          bodyText2: TextStyle(color: textColor2),
        ),
      ),
      // home: HomePage(),
      home: Motivational(),
      // home: OnBoard(),S
    );
  }
}

