import 'package:flutter/material.dart';
import 'package:furni_swap/presentation/screens/home_screen.dart';
import 'package:furni_swap/presentation/screens/splash_screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/details':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case '/':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('Page Not Found!!')),
          ),
        );
    }
  }
}
