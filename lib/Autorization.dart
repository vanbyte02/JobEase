import 'package:flutter/material.dart';
import 'package:jobease/WhoAreYou.dart';

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
      backgroundColor: const Color.fromARGB(255, 23, 23, 31),
   body: Center(
     child: Column(
      children: [
        const SizedBox(height: 200),
        Padding( 
            padding: const EdgeInsets.only(left:40, right:40), 
              child: TextFormField(  
                style: const TextStyle(fontSize: 16, 
                  color: Colors.white),
                decoration: const InputDecoration( 
              border: UnderlineInputBorder(), 
            labelText: 'Введите логин'), 
          ), 
        ),
        const SizedBox(height: 40),
        Padding( 
            padding: const EdgeInsets.only(left:40, right:40), 
              child: TextFormField(  
                style: const TextStyle(fontSize: 16, 
                  color: Colors.white),
                decoration: const InputDecoration(  
            labelText: 'Введите пароль'), 
          ), 
        ),
        const SizedBox(height: 100),
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
                  MaterialPageRoute(builder: (context) => const WhoAreYou()
                    ),
                  );   
                },
                    ),
                ),
        const SizedBox(height: 50),
        const Text("Или войти с помощью:",       
        textAlign: TextAlign.center,            
        style: TextStyle(color: Colors.white,   
            fontSize: 12,                       
        )),
        //код осуществления входа с помощью других учеток
        const SizedBox(height: 80),
        const Text("Нет аккаунта? Зарегестироваться!",       
        textAlign: TextAlign.center,            
        style: TextStyle(color: Colors.white,   
            fontSize: 12,                       
        ))
        ]
      )
    )
   );
  }
}   




