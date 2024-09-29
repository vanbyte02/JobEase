import 'package:flutter/material.dart';
import 'package:jobease/Employee/Employee.dart';
import 'package:jobease/Employee/Saved.dart';

//Экран с вакансиями
class Vacancy extends StatefulWidget {
 
  const Vacancy({super.key,});

  @override
  _VacancyState createState() => _VacancyState();
}

class _VacancyState extends State<Vacancy> {
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 242, 242),
   body:  Center(
     child: Column(
      children: [
      const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
            width: 260,
            height: 27,
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
          child: const Center(
            child: Text('Введите ключевые слова',
                  style: TextStyle(
                    fontSize: 14, 
                    color: Color.fromARGB(255, 91, 90, 94),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              IconButton(
              icon: const Icon(
                Icons.tune,
                color: Colors.black,
                size: 27,
                ),
              onPressed: () {},
            ),
            ], 
          ),
          const SizedBox(height: 15),
          const Text('Вакансии на основе вашего резюме',
                  style: TextStyle(
                    fontSize: 16, 
                    color: Color.fromARGB(255, 91, 90, 94),
                    fontWeight: FontWeight.bold,
                    ),
                  ),
        const SizedBox(height: 30),
         Container(
            width: 340,
            height: 250,
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
                  SizedBox(
                    width: 290,
                    height: 30, 
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:  const Color.fromARGB(255, 74, 187, 80),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30), 
                        ),
                      ),
                      child: const Text(
                        'Отозваться',
                        style: TextStyle(
                          fontSize: 16, 
                          color: Colors.white
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          )
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
              onPressed: () {},
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