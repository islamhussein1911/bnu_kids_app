import 'package:flutter/material.dart';

class Bnulogo extends StatelessWidget {
  const Bnulogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      width: 90,
      child: Image.asset('assets/images/logo.png'),
    );
  }
}
