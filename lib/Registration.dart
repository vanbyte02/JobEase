import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jobease/Autorization.dart';
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
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 23, 23, 31),
   body: Center(
     child: Column(
      children: [
        const SizedBox(height: 110),
        Padding( 
            padding: const EdgeInsets.only(left:40, right:40), 
              child: TextFormField(  
                style: const TextStyle(fontSize: 16, 
                  color: Colors.white),
                decoration: const InputDecoration(  
            labelText: 'Введите логин'), 
          ), 
        ),
        const SizedBox(height: 10),
        Padding( 
            padding: const EdgeInsets.only(left:40, right:40), 
              child: TextFormField(  
                style: const TextStyle(fontSize: 16, 
                  color: Colors.white),
                decoration: const InputDecoration( 
            labelText: 'Введите номер телефона'), 
          ), 
        ),
        const SizedBox(height: 10),
        Padding( 
            padding: const EdgeInsets.only(left:40, right:40), 
              child: TextFormField(  
                style: const TextStyle(fontSize: 16, 
                  color: Colors.white),
                decoration: const InputDecoration(  
            labelText: 'Введите пароль'), 
          ), 
        ),
        const SizedBox(height: 10),
        Padding( 
            padding: const EdgeInsets.only(left:40, right:40), 
              child: TextFormField(  
                style: const TextStyle(fontSize: 16, 
                  color: Colors.white),
                decoration: const InputDecoration(  
            labelText: 'Повторите пароль'), 
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
        const SizedBox(height: 30),
        const Text("Или зарегестироваться с помощью:",       
        textAlign: TextAlign.center,            
        style: TextStyle(color: Colors.white,   
            fontSize: 12,                       
        )),
        //код осуществления входа с помощью других учеток
        const SizedBox(height: 80),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
      children: [
          const Text("Есть аккаунт?",                   
        style: TextStyle(color: Colors.white,   
            fontSize: 12,                       
        )
        ),
        
        TextButton(
         onPressed: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const Autorization())),
        child: const Text('Войти!',            
        style: TextStyle(
          color: Colors.white,  
          fontWeight: FontWeight.w200,
          fontStyle: FontStyle.italic,  
          fontSize: 12,),
              ),
            )
          ]
        )
      ]
     )
    )
   );
  }
}      