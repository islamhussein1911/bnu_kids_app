import 'package:bnu_kidsapp/CustomWidgets/bnuLogo.dart';
import 'package:bnu_kidsapp/CustomWidgets/customCard.dart';
import 'package:bnu_kidsapp/CustomWidgets/custom_button.dart';
import 'package:flutter/material.dart';

class ChoiceScreen extends StatelessWidget {
  const ChoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Bnulogo(),
                SizedBox(height: 30),
                Text(
                  "WHO",
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xFF00adcf),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "ARE",
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xFF00adcf),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "YOU?",
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xFF00adcf),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomCard(
                      ontapped: () {},
                      avatarPath: 'assets/avatars/parents.png',
                      txt: 'PARENT',
                    ),

                    CustomCard(
                      ontapped: () {},
                      avatarPath: 'assets/avatars/child.png',
                      txt: 'CHILD',
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  bottom: -50,
                  right: -50,
                  child: CircleAvatar(
                    radius: 100,
                    backgroundColor: Color(0xFF00adcf),
                  ),
                ),
                Positioned(
                  bottom: 60,
                  left: 10,
                  child: CustomButton(txt: "CONTINUE", onPressed: () {}),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
