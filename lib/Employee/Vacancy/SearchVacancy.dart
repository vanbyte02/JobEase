import 'package:flutter/material.dart';
import 'package:jobease/Employee/Communication/Communication.dart';
import 'package:jobease/Employee/Profile/Account.dart';
import 'package:jobease/Employee/Vacancy/Saved.dart';
import 'package:jobease/Employee/Vacancy/Vacancy.dart';


final List<String> entries = <String>['Программист 1C', 'Программист Python', 'Программист C++', 'Программист C#', 'Full-stack разработчик', 'Backend разработчик', 'Frontend разработчик'];

//Экран с поиском вакансиями
class SearchVacancy extends StatefulWidget {
 
  const SearchVacancy({super.key,});

  @override
  _SearchVacancyState createState() => _SearchVacancyState();
}

class _SearchVacancyState extends State<SearchVacancy> {
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 242, 242),
   body:  Center(
     child: Column(
      children: [
      const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 40,
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
                  child: TextField(
                    decoration:  InputDecoration(
                      contentPadding:
                           EdgeInsets.symmetric(
                            vertical: 6, 
                           horizontal: 10),
                      prefixIcon:  Icon(
                        Icons.search
                      ),
                      hintText: 'Поиск...',
                      border: InputBorder.none,
                    ),
                  ),
                ),
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
        const SizedBox(height: 20),
         Expanded(
        child: ListView.separated(
          padding: const EdgeInsets.all(10),
          itemCount: entries.length,
          itemBuilder: (
            BuildContext context, 
            int index
            ){
            return Container(
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
        width: 340,
        height: 250,
        child: Stack(
          children: [
            Center(
              child: Text('${entries[index]}'),
            ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: const EdgeInsets.only(bottom: 10),
          child: SizedBox(
            width: 300,
            height: 30,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 74, 187, 80),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                'Отозваться',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                    ),
                  ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Vacancy()
                        ),
                      );   
                    },
              ),
            ),
          ),
        ),
        Align(
            alignment: Alignment.topRight,
            child: IconButton(
              icon: const Icon(
                Icons.turned_in_not,
                ),
              onPressed: () {
              },
            ),
          ),
      ],
    ),
  );
},
    separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 20),
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Communication()
                        ),
                      );   
                    },
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
                  MaterialPageRoute(builder: (context) => const Account()
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