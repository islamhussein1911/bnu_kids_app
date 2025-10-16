import 'package:bnu_kidsapp/CustomWidgets/backButton.dart';
import 'package:flutter/material.dart';

class ChildScreen extends StatelessWidget {
  const ChildScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF00adcf),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: 60),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "SORRY YOU MUST BE THE PARENT TO \nCREATE ACCOUNT",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 80,
                  width: 80,
                  child: Image.asset('assets/icons/restrictions.png'),
                ),
              ],
            ),
          ),
          SizedBox(height: 80),

          Expanded(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: backButtonWidget(tapped: () {}),
                ),
                Positioned(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 250,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(160),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: -120,
                  child: SizedBox(
                    height: 450,
                    width: 450,
                    child: Image.asset('assets/avatars/angry.png'),
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
