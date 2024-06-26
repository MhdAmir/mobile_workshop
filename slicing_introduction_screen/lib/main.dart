import 'package:flutter/material.dart';
import 'package:slicing_introduction_screen/page_indicator.dart';
import 'onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: OnboardingScreenView(),
    );
  }
}

