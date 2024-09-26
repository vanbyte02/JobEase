import 'package:flutter/material.dart';
import 'package:jobease/Login/Autorization.dart';


//Экран восстановление пароля
class ResetPassword extends StatefulWidget {
 
  const ResetPassword({super.key,});

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}


class _ResetPasswordState extends State<ResetPassword> {
  
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
                const Text(
                  'Забыли пароль?',
                  style: TextStyle(
                    fontSize: 24,
                    color:  Color.fromARGB(255, 88, 87, 91),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 100),
                 TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                SizedBox(
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
                    'Восстановить',
                    style: TextStyle(
                    fontSize: 14, 
                    color: Colors.black
                    ),
                   ),
              onPressed: () => _dialogBuilder(context),
                  ),
                ),
                const SizedBox(height: 45),
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
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Вернуться ко",
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
                      child: const Text('входу',
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




Future<void> _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Восстановление пароля'),
          content: const Text(
            'Письмо по восстановлению пароля отпраленно на ваш e-mail.'
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Закрыть',
              style: TextStyle(
                    fontSize: 14,
                    color:  Color.fromARGB(255, 88, 87, 91),
                    fontWeight: FontWeight.bold,
                  ),),
              onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Autorization()
                ),
              );
            },
          ),
        ],
      );
    },
  );
}