import 'package:flutter/material.dart';

//Экран заполнения анкеты работодателя
class Recruiter extends StatefulWidget {
 
  const Recruiter({super.key,});

  @override
  _RecruiterState createState() => _RecruiterState();
}


class _RecruiterState extends State<Recruiter> {
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 242, 242),
   body: Center(
     child: Column(
      children: [
        SizedBox(height: 300),
        Text('Работодатель',
        style: TextStyle(
        fontSize: 28,
        color: Colors.black)),
        ]
      )
    )
   );
  }
}   