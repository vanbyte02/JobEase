import 'package:flutter/material.dart';
import 'package:flutter_application_2/Autorization.dart';
import 'package:flutter_application_2/Registration.dart';

//Привественный экран
class WelcomeScreen extends StatefulWidget {
 
  const WelcomeScreen({super.key,});

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}


class _WelcomeScreenState extends State<WelcomeScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 23, 23, 31),
   body: Center(
     child: Column(
      children: [
        const SizedBox(height: 400),
        SizedBox(
                width: 145,
                height: 45, 
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 56, 255, 196),
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6), 
                    ),
                  ),
                  child: const Text(
                    'Войти',
                    style: TextStyle(
                    fontSize: 14, 
                    color: Colors.black
                    ),
                   ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Autorization()
                          ),
                        );
                      },
                    ),
                ),
                 const SizedBox(height: 24),
                SizedBox(
                width: 145,
                height: 45, 
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6), 
                    ),
                  ),
                  child: const Text(
                    'Регистрация',
                    style: TextStyle(
                    fontSize: 14, 
                    color: Colors.black
                    ),
                   ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Registration()
                          ),
                        );
                      },
                    ),
                ),
        ]
      )
    )
   );
  }
}   