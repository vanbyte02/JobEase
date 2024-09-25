import 'package:flutter/material.dart';

//Экран с вакансиями
class Vacancy extends StatefulWidget {
 
  const Vacancy({super.key,});

  @override
  _VacancyState createState() => _VacancyState();
}


class _VacancyState extends State<Vacancy> {
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
   body: Center(
     child: Column(
      children: [
        SizedBox(height: 300),
        Text('ЛОГО',
        style: TextStyle(
        fontSize: 28,
        color: Colors.black)),
        ]
      )
    )
   );
  }
}   