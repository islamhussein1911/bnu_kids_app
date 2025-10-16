import 'package:bnu_kidsapp/CustomWidgets/genderBox.dart';
import 'package:flutter/material.dart';

class Childinfoparentview1Screen extends StatelessWidget {
  const Childinfoparentview1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(height: 40),
                const Text(
                  "LET’S GET TO \nKNOW YOUR KID!",
                  style: TextStyle(
                    fontSize: 36,
                    color: Color(0xFF00adcf),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Genderbox(
                      onPressed: () {},
                      gender: "BOY",
                      color: const Color(0xFF00adcf),
                    ),
                    SizedBox(width: 20),
                    Genderbox(
                      onPressed: () {},
                      gender: "GIRL",
                      color: const Color(0xFFff7be2),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
