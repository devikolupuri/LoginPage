import 'package:flutter/material.dart';
// import '../main.dart';
import 'Views/SplashScreen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      // theme: ThemeData(
      // ),
      home: SplashScreen(), // Start with the splash screen
    );
  }
}
