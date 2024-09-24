import 'package:flutter/material.dart';
import 'package:jobease/Registration.dart';
//import 'package:jobease/Registration.dart';
//import 'package:jobease/WhoAreYou.dart';

//Экран авторизации
class Autorization extends StatefulWidget {
 
  const Autorization({super.key,});

  @override
  _AutorizationState createState() => _AutorizationState();
}


class _AutorizationState extends State<Autorization> {
  
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:  Scaffold(
        backgroundColor: const Color.fromARGB(255, 23, 23, 31),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Text(
                  'Вход',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                
                SizedBox(height: 40),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Пароль',
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.visibility_off),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        
                        Text('Запомнить меня?',
                        style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    ),),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                      },
                      child: Text('Восстановить пароль',
                      style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,),),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50),
                ),
                  child: Text('Вход'),
                ),
                SizedBox(height: 20),
                Text('Или',
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,),),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.g_mobiledata, size: 40),
                      onPressed: () {
                      },
                    ),
                    SizedBox(width: 20),
                    IconButton(
                      icon: Icon(Icons.apple, size: 40),
                      onPressed: () {
                      },
                    ),
                    SizedBox(width: 20),
                    IconButton(
                      icon: Icon(Icons.facebook, size: 40),
                      onPressed: () {
                      },
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Нет аккаунта? ",
                    style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,),),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Registration()
                    ),
                  );  
                      },
                      child: Text('Регистрация',
                      style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
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

