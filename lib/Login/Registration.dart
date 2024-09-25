import 'package:flutter/material.dart';
import 'package:jobease/Login/Autorization.dart';
import 'package:jobease/WhoAreYou.dart';


//Экран регистрации
class Registration extends StatefulWidget {
 
  const Registration({super.key,});

  @override
  _RegistrationState createState() => _RegistrationState();
}


class _RegistrationState extends State<Registration> {
  
 @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:  Scaffold(
        backgroundColor: Colors.white,
        body:  Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 15),
                const Text(
                  'Регистрация',
                  style: TextStyle(
                    fontSize: 24,
                    color:  Color.fromARGB(255, 88, 87, 91),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 15),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Имя',
                    border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                 TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                 TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Пароль',
                    border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
                    ),
                    suffixIcon: const Icon(Icons.visibility_off),
                  ),
                ),
                const SizedBox(height: 15),
                const Row(
                      children: [
                        Text('Я согласен с правилами платформы',
                        style: TextStyle(
                    fontSize: 13,
                    color:  Color.fromARGB(255, 88, 87, 91),
                    ),),
                      ],
                    ),
                const SizedBox(height: 15),
                SizedBox(
                width: 250,
                height: 40, 
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                      backgroundColor:  const Color.fromARGB(255, 56, 255, 196),
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
                  MaterialPageRoute(builder: (context) => const WhoAreYou()
                        ),
                      );   
                    },
                  ),
                ),
                const SizedBox(height: 25),
                const Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Divider(
                      color: Colors.black,
                      height: 5,
                      thickness: 1,
                    ),
                 Text('Или',
                style: TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(255, 88, 87, 91),
                    fontWeight: FontWeight.bold,),),
                    Divider(
                      color: Colors.black,
                      height: 5,
                      thickness: 1,
                    ),
                  ], 
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     IconButton(
                      icon: const Icon(Icons.g_mobiledata_sharp,
                      color: Colors.red, 
                      size: 40),
                      onPressed: () {
                      },
                    ),
                    const SizedBox(width: 20),
                    IconButton(
                      icon: const Icon(Icons.apple, 
                      color: Colors.black,
                      size: 40),
                      onPressed: () {
                      },
                    ),
                    const SizedBox(width: 20),
                    IconButton(
                      icon: const Icon(Icons.facebook, 
                      color: Colors.blue,
                      size: 40),
                      onPressed: () {
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Есть аккаунт? ",
                    style: TextStyle(
                    fontSize: 13,
                    color:  Color.fromARGB(255, 88, 87, 91),
                    ),),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Autorization()
                    ),
                  );  
                      },
                      child: const Text('Войти',
                      style: TextStyle(
                    fontSize: 13,
                    color:  Color.fromARGB(255, 88, 87, 91),
                    fontWeight: FontWeight.bold,),),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}