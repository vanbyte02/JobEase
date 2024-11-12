import 'package:flutter/material.dart';
import 'package:jobease/Employee/Communication/HRDialog.dart';
import 'package:jobease/Employee/Profile/Account.dart';
import 'package:jobease/Employee/Vacancy/Saved.dart';
import 'package:jobease/Employee/Vacancy/SearchVacancy.dart';

final List<String> txt = <String>['Работодатель 1', 'Работодатель 2', 'Работодатель 3', 'Работодатель 4', 'Работодатель 5', 'Работодатель 6', 'Работодатель 7', 'Работодатель 8', 'Работодатель 9', 'Работодатель 10',];

//Экран чатов с работодателем
class Communication extends StatefulWidget {
 
  const Communication({super.key,});

  @override
  _CommunicationState createState() => _CommunicationState();
}

class _CommunicationState extends State<Communication> {
  
 @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 242, 242),
   body: Center(
     child: Column(
      children: [
      const SizedBox(height: 20),
          const Text('Чат с работодателем',
                  style: TextStyle(
                    fontSize: 16, 
                    color: Color.fromARGB(255, 91, 90, 94),
                    fontWeight: FontWeight.bold,
                    ),
                  ),
        const SizedBox(height: 10),
         Expanded(
          child: ListView.separated(
    padding: const EdgeInsets.all(10),
    itemCount: txt.length,
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
        width: 300,
        height: 70,
        child: Stack(
          children: [
            Center(
              child: Text('${txt[index]}'),
            ),
            ],
          ),
        );
      },
    separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 10),
            ),
          ) 
        ]
      )
    ),
    bottomNavigationBar: BottomAppBar(
      color: const Color.fromARGB(255, 242, 242, 242),
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
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => SearchVacancy(onSave: addVacancy), // Pass the function
                  //   ),
                  // );
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
                  MaterialPageRoute(builder: (context) => Saved(savedVacancies: savedVacancies),
                  )
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
                  MaterialPageRoute(builder: (context) => const HRDialog()
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