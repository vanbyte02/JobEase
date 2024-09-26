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
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 242, 242),
   body: const Center(
     child: Column(
      children: [
        SizedBox(height: 300),
        Text('Сотрудник',
        style: TextStyle(
        fontSize: 28,
        color: Colors.black)),
        ]
      )
    ),
    bottomNavigationBar: BottomAppBar(
      child: Container(
  decoration: const BoxDecoration(
    border: Border(
      top: BorderSide(
        color: Colors.grey, 
        width: 1
        )
        ),
      ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.black,
                size: 22,
                ),
              onPressed: () {},
            ),
             IconButton(
              icon: const Icon(
                Icons.favorite,
                color: Colors.black,
                size: 22,
                ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.question_answer,
                color: Colors.black,
                size: 22,
                ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.person,
                color: Colors.black,
                size: 22,
                ),
              onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}