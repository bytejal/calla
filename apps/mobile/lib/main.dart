import 'package:flutter/material.dart';

import 'features/onboarding/splash_screen.dart';

void main() {
  runApp(const CallaApp());
}

class CallaApp extends StatelessWidget {
  const CallaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}