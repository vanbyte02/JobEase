import 'package:flutter/material.dart';

//Экран авторизации
class Autorization extends StatefulWidget {
 
  const Autorization({super.key,});

  @override
  _AutorizationState createState() => _AutorizationState();
}


class _AutorizationState extends State<Autorization> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 23, 23, 31),
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
                },
                    ),
                ),
                 const SizedBox(height: 24),
                
        ]
      )
    )
   );
  }
}   