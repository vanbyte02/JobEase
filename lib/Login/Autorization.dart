import 'package:flutter/material.dart';
import 'package:jobease/Employee/Vacancy.dart';
import 'package:jobease/Login/Registration.dart';
import 'package:jobease/Login/ResetPassword.dart';


//Экран авторизации
class Autorization extends StatefulWidget {
 
  const Autorization({super.key,});

  @override
  _AutorizationState createState() => _AutorizationState();
}

class _AutorizationState extends State<Autorization> {
  
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:  Scaffold(
        backgroundColor: Color.fromARGB(255, 242, 242, 242),
        body:  Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    'Вход',
                    style: TextStyle(
                      fontSize: 24,
                      color: Color.fromARGB(255, 88, 87, 91),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                const SizedBox(height: 40),
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
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                         Checkbox(
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value;
                        });
                      },
                    ),
                        const Text(
                          'Запомнить меня?',
                        style: TextStyle(
                    fontSize: 12,
                    color:  Color.fromARGB(255, 88, 87, 91),
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ResetPassword()
                              ),
                            );   
                          },
                      child: const Text('Восстановить пароль',
                      style: TextStyle(
                    fontSize: 12,
                    color:  Color.fromARGB(255, 88, 87, 91),
                    fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Container(
                width: 250,
                height: 40, 
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                      backgroundColor:  const Color.fromARGB(255, 74, 187, 80),
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6), 
                    ),
                  ),
                  child: const Text(
                    'Вход',
                    style: TextStyle(
                    fontSize: 14, 
                    color: Colors.white
                    ),
                   ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Vacancy()
                        ),
                      );   
                    },
                  ),
                ),
                const SizedBox(height: 30),
                const Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                    width: 160,
                      child: Divider(
                        color: Color.fromARGB(255, 183, 179, 193),
                      ),
                    ),
                SizedBox(width: 10),
                SizedBox(height: 10),
                 Text('Или',
                style: TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(255, 88, 87, 91),
                    fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10),
                    SizedBox(
                    width: 160,
                      child: Divider(
                        color: Color.fromARGB(255, 183, 179, 193),
                      ),
                    ),
                  ], 
                ),
                const SizedBox(height: 10),
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
                    const Text("Нет аккаунта? ",
                    style: TextStyle(
                    fontSize: 13,
                    color:  Color.fromARGB(255, 88, 87, 91),
                    ),),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Registration()
                    ),
                  );  
                      },
                      child: const Text('Регистрация',
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

