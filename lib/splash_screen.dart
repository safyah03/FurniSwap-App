import 'package:flutter/material.dart';
import 'package:furni_swap/auth_screens/login_screen.dart';
import 'package:furni_swap/auth_screens/sign_up_screen.dart';
import 'package:furni_swap/nav_screen.dart';
import 'package:furni_swap/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SignUpScreen()),
      );
    });
    return Scaffold(
      backgroundColor: const Color(0xffbbf7ff),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(flex: 5, child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Image.asset('assets/images/logo.png'),
          )),
          Expanded(flex: 2, child: Container())
        ],
      ),
    );
  }
}
