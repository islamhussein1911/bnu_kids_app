import 'package:flutter/material.dart';

/// Converted from a top-level `buildField` function to a `StatelessWidget`.
///
/// Usage (positional label to match original function):
/// ```dart
/// BuildField('Email', hint: 'Enter your email');
/// ```
class BuildField extends StatelessWidget {
  final String label;
  final String? hint;
  final bool obscure;
  final TextInputType? keyboard;
  final double? width;
  final double? height;

  const BuildField({
    super.key,
    required this.label,
    this.hint,
    this.obscure = false,
    this.keyboard,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 6),
        SizedBox(
          width: width,
          height: height,
          child: TextField(
            obscureText: obscure,
            keyboardType: keyboard,
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: TextStyle(color: Colors.grey[400]),
              filled: true,
              fillColor: const Color(0xFFF5F5F5),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 14,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
