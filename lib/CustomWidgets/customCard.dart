import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String avatarPath;
  final String txt;
  final VoidCallback? ontapped;
  const CustomCard({
    super.key,
    required this.avatarPath,
    required this.txt,
    required this.ontapped,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: ontapped,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                SizedBox(
                  height: 160,
                  width: 140,
                  child: Image.asset(avatarPath),
                ),
                Text(
                  txt,
                  style: TextStyle(
                    color: Color(0xFF00adcf),
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
