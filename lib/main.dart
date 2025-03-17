import 'package:flutter/material.dart';
import 'package:furni_swap/app_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const FurniSwap());
}

class FurniSwap extends StatelessWidget {
  const FurniSwap({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Furni Swap',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Color(0xfff9f9f9)),
        scaffoldBackgroundColor: const Color(0xfff9f9f9),
        fontFamily: "abhaya",
        primaryColor: const Color(0xff3a75ba),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            overlayColor:
                WidgetStateProperty.all(Colors.black.withOpacity(0.1)),
          ),
        ),
      ),
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
