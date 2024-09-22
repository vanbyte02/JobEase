import 'package:flutter/material.dart';

//Экран авторизации
class WhoAreYou extends StatefulWidget {
 
  const WhoAreYou({super.key,});

  @override
  _WhoAreYouState createState() => _WhoAreYouState();
}


class _WhoAreYouState extends State<WhoAreYou> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 23, 23, 31),
   body: Center(
     child: Column(
      children: [
         SizedBox(height: 50),
         Text("Кто вы?",       
        textAlign: TextAlign.center,            
        style: TextStyle(color: Colors.white,   
            fontSize: 36,                       
        )
      ),
       SizedBox(height: 50),
       Text("Я соискатель",       
        textAlign: TextAlign.center,            
        style: TextStyle(color: Colors.white,   
            fontSize: 20,                       
        )
      ),
      SizedBox(height: 5),
      Text("Ищу работу",       
        textAlign: TextAlign.center,            
        style: TextStyle(color: Colors.white,   
            fontSize: 11,                       
        )
      ),
      SizedBox(height: 50),
       Text("Я работодатель",       
        textAlign: TextAlign.center,            
        style: TextStyle(color: Colors.white,   
            fontSize: 20,                       
        )
      ),
      SizedBox(height: 5),
      Text("Предлогаю работу",       
        textAlign: TextAlign.center,            
        style: TextStyle(color: Colors.white,   
            fontSize: 11,                       
        )
      ),
        ]
      )
    )
   );
  }
}   




