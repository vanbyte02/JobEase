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
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 242, 242),
   body: const Center(
     child: Column(
      children: [
        SizedBox(height: 300),
        Text('ЛОГО',
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