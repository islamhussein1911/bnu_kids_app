import 'package:flutter/material.dart';
import 'screens/parentSignUp_screen.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: ParentsignupScreen());
  }
}
