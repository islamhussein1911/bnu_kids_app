import 'package:bnu_kidsapp/screens/childInfoParentView1_screen.dart';
import 'package:bnu_kidsapp/screens/child_screen.dart';
import 'package:bnu_kidsapp/screens/choice_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Childinfoparentview1Screen(),
    );
  }
}
