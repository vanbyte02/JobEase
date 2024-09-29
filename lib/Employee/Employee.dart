import 'package:flutter/material.dart';
import 'package:jobease/Employee/Saved.dart';
import 'package:jobease/Employee/Vacancy.dart';

//Экран сотрудника(Личный кабинет)
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
        Text('Личный кабинет',
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
                size: 24,
                ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Vacancy()
                        ),
                      );   
                    },
            ),
             IconButton(
              icon: const Icon(
                Icons.turned_in_not,
                color: Colors.black,
                size: 24,
                ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Saved()
                        ),
                      );   
                    },
            ),
            IconButton(
              icon: const Icon(
                Icons.question_answer,
                color: Colors.black,
                size: 24,
                ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.person,
                color: Colors.black,
                size: 24,
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