import 'package:flutter/material.dart';

//Экран регистрации
class Registration extends StatefulWidget {
 
  const Registration({super.key,});

  @override
  _RegistrationState createState() => _RegistrationState();
}


class _RegistrationState extends State<Registration> {
  
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
              onPressed: () {},
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
              onPressed: () {},
                    ),
                ),
        ]
      )
    )
   );
  }
}   