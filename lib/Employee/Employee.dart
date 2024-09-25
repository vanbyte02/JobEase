import 'package:flutter/material.dart';

//Экран заполнения анкеты сотрудника
class Employee extends StatefulWidget {
 
  const Employee({super.key,});

  @override
  _EmployeeState createState() => _EmployeeState();
}


class _EmployeeState extends State<Employee> {
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
   body: Center(
     child: Column(
      children: [
        SizedBox(height: 300),
        Text('Сотрудник',
        style: TextStyle(
        fontSize: 28,
        color: Colors.black)),
        ]
      )
    )
   );
  }
}   