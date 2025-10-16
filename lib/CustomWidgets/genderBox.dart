import 'package:flutter/material.dart';

class Genderbox extends StatelessWidget {
  final VoidCallback? onPressed;
  final String gender;
  final Color color;
  const Genderbox({
    super.key,
    required this.onPressed,
    required this.gender,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: color, width: 2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      onPressed: onPressed,
      child: Text(
        gender,
        style: TextStyle(
          color: color,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
