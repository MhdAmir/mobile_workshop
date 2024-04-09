import 'package:first_ui/pages/home.dart';
import 'package:flutter/material.dart';
import 'whatapp_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: false),
      debugShowCheckedModeBanner: false,
      home: const WhatsAppPage(),
    );
  }
}



