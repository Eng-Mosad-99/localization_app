import 'package:flutter/material.dart';
import 'package:localization_app/screens/home_screen.dart';

void main() {
  runApp(const LocalizationApp());
}

class LocalizationApp extends StatelessWidget {
  const LocalizationApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomeScreen(),
    );
  }
}
