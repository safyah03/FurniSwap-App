import 'package:flutter/material.dart';
import 'package:furni_swap/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Furni Swap',
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: const Color(0xfff9f9f9)),
        scaffoldBackgroundColor: const Color(0xfff9f9f9),
        fontFamily: "abhaya",
        primaryColor: const Color(0xff3a75ba),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.black.withOpacity(0.1)),
          ),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}