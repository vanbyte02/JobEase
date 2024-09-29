import 'package:flutter/material.dart';
import 'package:jobease/Employee/Employee.dart';
import 'package:jobease/Employee/Vacancy.dart';

//Экран с вакансиями
class Saved extends StatefulWidget {
 
  const Saved({super.key,});

  @override
  _SavedState createState() => _SavedState();
}

class _SavedState extends State<Saved> {
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 242, 242),
   body: Column(
      children: [
      const SizedBox(height: 30),
          const Text('Сохранённые вакансии',
                  style: TextStyle(
                    fontSize: 16, 
                    color: Color.fromARGB(255, 91, 90, 94),
                    fontWeight: FontWeight.bold,
                    ),
                  ),
        const SizedBox(height: 30),
         Container(
            width: 340,
            height: 130,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 247, 247, 247),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 3,
                  blurRadius: 4,
                ),
              ],
            ),
            child: Center(
              child: Column(
                children: [
                  const Text(
                    '',
                    style: TextStyle(
                      fontSize: 14, 
                      color: Color.fromARGB(255, 91, 90, 94),
                    ),
                  ),
                  const SizedBox(height: 190),
                  
                ],
              ),
            ),
          )
        ]
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
              onPressed: () {},
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Employee()
                        ),
                      );   
                    },
              ),
            ],
          ),
        ),
      ),
    );
  }
}