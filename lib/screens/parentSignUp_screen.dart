import 'package:flutter/material.dart';
import '../CustomWidgets/bnuLogo.dart'; // import your logo widget

class ParentsignupScreen extends StatelessWidget {
  const ParentsignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 🔹 Logo
              const Align(
                alignment: Alignment.topLeft,
                child: Bnulogo(),
              ),
              const SizedBox(height: 30),

              // 🔹 SIGN UP title
              const Text(
                'SIGN UP',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF00B4D8),
                  letterSpacing: 1.2,
                ),
              ),
              const SizedBox(height: 20),

              // 🔹 Scrollable TextFields
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildField('Full Name', 'Enter your full name'),
                      const SizedBox(height: 16),
                      buildField('Email', 'Enter your email'),
                      const SizedBox(height: 16),
                      buildField('Password', 'Enter your password', obscure: true),
                      const SizedBox(height: 16),
                      buildField('Confirm Password', 'Re-enter your password',
                          obscure: true),
                      const SizedBox(height: 16),
                      buildField('Phone Number', 'Enter your phone number',
                          keyboard: TextInputType.phone),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // 🔹 SEND VERIFICATION button
              SizedBox(
                width: double.infinity,
                height: 46,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF00B4D8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 0,
                  ),
                  child: const Text(
                    'SEND VERIFICATION',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 14),

              // 🔹 VERIFY button
              SizedBox(
                width: double.infinity,
                height: 46,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Color(0xFF00B4D8), width: 2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    'VERIFY',
                    style: TextStyle(
                      color: Color(0xFF00B4D8),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper widget for each text field
  Widget buildField(String label, String hint,
      {bool obscure = false, TextInputType? keyboard}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 6),
        TextField(
          obscureText: obscure,
          keyboardType: keyboard,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(color: Colors.grey[400]),
            filled: true,
            fillColor: const Color(0xFFF5F5F5),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }
}