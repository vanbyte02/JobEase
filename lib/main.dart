import 'package:flutter/material.dart';
import 'package:jobease/Login/WelcomeScreen.dart';

void main() {
  runApp(const MyApp());
}

//Запук приложения
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      ),
      home: WelcomeScreen(),
    );
    
  }
}
