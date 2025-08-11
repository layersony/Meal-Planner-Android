import 'package:flutter/material.dart';
import 'package:mealplanner/screens/profile.dart';
import 'package:mealplanner/screens/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/profile': (context) => const ProfileScreen(),
      },
    );
  }
}
