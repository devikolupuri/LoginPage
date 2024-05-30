// ignore: file_names
import 'package:flutter/material.dart';
import 'LoginScreen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  navigateToLoginScreen(BuildContext context) {
   Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>  LoginScreen()),
      );
    });
  }

@override
  Widget build(BuildContext context) {
    navigateToLoginScreen(context);
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 55, 29, 207),
      body: Center(
        child: Text(
          'LOTO',
          style: TextStyle(
            fontSize: 45.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}