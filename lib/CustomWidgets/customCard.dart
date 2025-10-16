import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String avatarPath;
  final String txt;
  const CustomCard({super.key, required this.avatarPath, required this.txt});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(height: 140, width: 140, child: Image.asset(avatarPath)),
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
    );
  }
}
