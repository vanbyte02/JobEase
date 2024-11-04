import 'package:flutter/material.dart';
import 'package:jobease/Employee/Vacancy/SearchVacancy.dart';
import 'package:jobease/Login/Autorization.dart';


//Экран регистрации
class Registration extends StatefulWidget {
 
  const Registration({super.key,});

  @override
  _RegistrationState createState() => _RegistrationState();
}


class _RegistrationState extends State<Registration> {
  
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
                const SizedBox(height: 15),
                const Text(
                  'Создать аккаунт',
                  style: TextStyle(
                    fontSize: 24,
                    color: Color.fromARGB(255, 88, 87, 91),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 15),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Имя',
                    border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                 TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                 TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Пароль',
                    border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
                    ),
                    suffixIcon: const Icon(Icons.visibility_off),
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                      children: [
                        Checkbox(
                      activeColor: Color.fromARGB(255, 74, 187, 80),
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value;
                        });
                      },
                    ),
                        const Text(
                          'Я согласен с правилами платформы',
                        style: TextStyle(
                    fontSize: 13,
                    color:  Color.fromARGB(255, 88, 87, 91),
                        ),
                      ),
                    ],
                  ),
                const SizedBox(height: 15),
                Container(
                width: 250,
                height: 40, 
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                      backgroundColor:  const Color.fromARGB(255, 74, 187, 80),
                      shape: RoundedRectangleBorder(
                        
                      borderRadius: BorderRadius.circular(8),
                      
                    ),
                  ),
                  child: const Text(
                    'Регистрация',
                    style: TextStyle(
                    fontSize: 14, 
                    color: Colors.white
                    ),
                   ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SearchVacancy()
                        ),
                      );   
                    },
                  ),
                ),
                const SizedBox(height: 25),
                const Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                    width: 130,
                      child: Divider(
                        color: Color.fromARGB(255, 183, 179, 193),
                      ),
                    ),
                SizedBox(width: 10),
                 Text('Или',
                style: TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(255, 88, 87, 91),
                    fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10),
                    SizedBox(
                    width: 130,
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