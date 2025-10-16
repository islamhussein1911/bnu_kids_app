import 'package:flutter/material.dart';

class backButtonWidget extends StatelessWidget {
  final VoidCallback? tapped;
  const backButtonWidget({super.key, required this.tapped});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        onTap: tapped,
        child: Container(
          height: 200,
          width: 40,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
          child: Center(
            child: SizedBox(
              height: 30,
              width: 30,
              child: Image.asset('assets/icons/back.png'),
            ),
          ),
        ),
      ),
    );
  }
}
