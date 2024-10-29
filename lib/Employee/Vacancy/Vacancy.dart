import 'package:flutter/material.dart';
import 'package:jobease/Employee/Vacancy/SearchVacancy.dart';

//Экран вакансии
class Vacancy extends StatefulWidget {
  const Vacancy({super.key});

  @override
  _VacancyState createState() => _VacancyState();
}

class _VacancyState extends State<Vacancy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
    backgroundColor: const Color.fromARGB(255, 242, 242, 242),
   leading: IconButton(
         icon: const Icon(
             Icons.arrow_back_ios, 
              size: 25
               ),
              onPressed: () {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SearchVacancy()
          ),
        );   
      },
    ),
    actions: [
       IconButton(
              icon: const Icon(
                Icons.turned_in_not,
                color: Colors.black,
                size: 27,
                ),
              onPressed: () {},
            ),
    ],
   ),
  backgroundColor: const Color.fromARGB(255, 242, 242, 242),
      body: SingleChildScrollView(
        child: Column(
          children: [
           
        ]
      ),
    ),
       bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 242, 242, 242),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
            child: SizedBox(
                width: 300,
                height: 30,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
               onPressed: () {
                },
                child: const Text(
                  'Отозваться',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}



