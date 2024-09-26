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
      backgroundColor: Color.fromARGB(255, 242, 242, 242),
   body: Center(
     child: Column(
      children: [
        const SizedBox(height: 200),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Container(
              width: 80,
              height: 80,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 74, 187, 80),
              ),
              child: const Center(
                child: Text(
                  'EJ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'EasyJob',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 100),
        SizedBox(
                width: 250,
                height: 40, 
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 74, 187, 80),
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
                width: 250,
                height: 40, 
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 245, 240, 240),
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