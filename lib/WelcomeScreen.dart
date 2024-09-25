import 'package:flutter/material.dart';

//Привественный экран
class WelcomeScreen extends StatefulWidget {
 
  const WelcomeScreen({super.key,});

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}


class _WelcomeScreenState extends State<WelcomeScreen> {
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
   body: Center(
     child: Column(
      children: [
        SizedBox(height: 300),
        Text('ЛОГО',
        style: TextStyle(
        fontSize: 28,
        color: Colors.black)),
        ]
      )
    )
   );
  }
}   