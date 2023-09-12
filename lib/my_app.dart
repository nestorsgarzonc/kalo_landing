import 'package:flutter/material.dart';
import 'package:kalo_landing/ui/screens/screens.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kalo',
      theme: ThemeData(),
      home: const LandingScreen(),
    );
  }
}
