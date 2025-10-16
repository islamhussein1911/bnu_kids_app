import 'package:bnu_kidsapp/CustomWidgets/buildField.dart';
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "LET’S GET TO \nKNOW YOUR KID!",
                      style: TextStyle(
                        fontSize: 36,
                        color: Color(0xFF00adcf),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 50, left: 20),
                        child: BuildField(
                          label: 'What’s his/her name?',
                          hint: 'Enter your child’s name',
                        ),
                      ),
                      const SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.only(right: 50, left: 20),
                        child: BuildField(
                          label: 'His/Her nickname',
                          hint: 'Enter nickname',
                        ),
                      ),
                      const SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            BuildField(
                              width: 160,
                              label: 'Date of Birth',
                              hint: 'DD/MM/YYYY',
                            ),
                            const SizedBox(width: 16),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Gender",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Row(
                                  children: [
                                    Genderbox(
                                      onPressed: () {},
                                      gender: 'BOY',
                                      color: Color(0xFF00adcf),
                                    ),
                                    const SizedBox(width: 8),
                                    Genderbox(
                                      onPressed: () {},
                                      gender: 'GIRL',
                                      color: Color(0xFFff7be2),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: -100,
                  right: -130,
                  child: SizedBox(
                    height: 400,
                    width: 400,
                    child: Image.asset('assets/avatars/normal.png'),
                  ),
                ),
                Positioned(
                  bottom: -120,
                  right: -70,
                  child: Container(
                    height: 200,
                    width: 400,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.black, blurRadius: 12),
                      ],
                      color: Color(0xFF00adcf),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
