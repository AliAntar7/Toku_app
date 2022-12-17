import 'package:flutter/material.dart';
import 'package:toku_app/screens/home.dart';
import 'package:toku_app/screens/splash_screen.dart';

void main()
{
  runApp(const TokuApp());
}

class TokuApp extends StatelessWidget {
  const TokuApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'splash',
      routes:
      {
        'splash' : (context) => const SplashScreen(),
        'Home' : (context) => const HomeScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}