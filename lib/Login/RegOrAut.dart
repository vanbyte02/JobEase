import 'package:flutter/material.dart';
import 'package:jobease/Login/Autorization.dart';
import 'package:jobease/Login/Registration.dart';

//Экран выбора вход или регистрация
class RegOrAut extends StatefulWidget {
 
  const RegOrAut({super.key,});

  @override
  _RegOrAutState createState() => _RegOrAutState();
}


class _RegOrAutState extends State<RegOrAut> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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