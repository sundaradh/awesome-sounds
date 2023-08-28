import 'package:awesome_sounds/global/const.dart';
import 'package:awesome_sounds/screens/focus.dart';
import 'package:awesome_sounds/screens/motivational.dart';
import 'package:awesome_sounds/screens/sleep.dart';
import 'package:awesome_sounds/screens/study.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Awesome Sounds"),
        backgroundColor: primaryColor3,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: GridView(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1,
              crossAxisSpacing: 5,
              // mainAxisSpacing: 10,
            ),
            children: [
              _buildGestureDetector("Motivation", const Motivational()),
              _buildGestureDetector("Focus", const FocusPage()),
              _buildGestureDetector("Sleep", const SleepPage()),
              _buildGestureDetector("Study", const Study()),
            ],
          ),
        ),
      ),
    );
  }

 Widget _buildGestureDetector(String title, Widget page) {
  return GestureDetector(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: const EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: primaryColor3.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 12,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: const Icon(Icons.person, size: 90, color: primaryColor),
            ),
            Container(
              decoration: const BoxDecoration(
                color: primaryColor3,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Center(
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    onTap: () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => page),
        (route) => true,
      );
    },
  );
}
}
