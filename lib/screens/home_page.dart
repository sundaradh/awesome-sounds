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
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
            ),
            children: [
              GestureDetector(
                child: Container(
                  margin: const EdgeInsets.only(top: 20, left: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
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
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        child: const Icon(Icons.person,
                            size: 84, color: primaryColor),
                      ),
                      Center(
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              color: primaryColor3,
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(12),
                                bottomLeft: Radius.circular(12),
                              )),
                          padding: const EdgeInsets.all(8),
                          child: const Center(
                            child: Text(
                              "Motivation",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Motivational(),
                      ),
                      (route) => true);
                },
              ),
              GestureDetector(
                child: Container(
                  margin: const EdgeInsets.only(top: 20, left: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
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
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        child: const Icon(Icons.person,
                            size: 84, color: primaryColor),
                      ),
                      Center(
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              color: primaryColor3,
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(12),
                                bottomLeft: Radius.circular(12),
                              )),
                          padding: const EdgeInsets.all(8),
                          child: const Center(
                            child: Text(
                              "Focus",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FocusPage (),
                      ),
                      (route) => true);
                },
              ),
              GestureDetector(
                child: Container(
                  margin: const EdgeInsets.only(top: 20, left: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
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
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        child: const Icon(Icons.person,
                            size: 84, color: primaryColor),
                      ),
                      Center(
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              color: primaryColor3,
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(12),
                                bottomLeft: Radius.circular(12),
                              )),
                          padding: const EdgeInsets.all(8),
                          child: const Center(
                            child: Text(
                              "Sleep",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SleepPage(),
                      ),
                      (route) => true);
                },
              ),
              GestureDetector(
                child: Container(
                  margin: const EdgeInsets.only(top: 20, left: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
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
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        child: const  Icon(Icons.person,
                            size: 84, color: primaryColor),
                      ),
                      Center(
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              color: primaryColor3,
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(12),
                                bottomLeft: Radius.circular(12),
                              )),
                          padding: const EdgeInsets.all(8),
                          child: const Center(
                            child: Text(
                              "Study",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Study(),
                      ),
                      (route) => true);
                },
              ),


              
            ],
          ),
        ),
      ),
    );
  }
}
