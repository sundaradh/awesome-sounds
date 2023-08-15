import 'package:awesome_sounds/global/const.dart';
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
        backgroundColor: primaryColor,
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
            ),
            children: List.generate(
              10,
              (index) => Container(
                margin: const EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: primaryColor.withOpacity(0.5),
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
                          size: 40, color: Colors.blueAccent),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                          )),
                      padding: const EdgeInsets.all(12),
                      child: const Text(
                        "Motivational",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
