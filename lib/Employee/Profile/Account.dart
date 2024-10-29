import 'package:flutter/material.dart';
import 'package:jobease/Employee/Communication/Communication.dart';
import 'package:jobease/Employee/Profile/CreateResume.dart';
import 'package:jobease/Employee/Profile/Profile.dart';
import 'package:jobease/Employee/Profile/Setting.dart';
import 'package:jobease/Employee/Vacancy/Saved.dart';
import 'package:jobease/Employee/Vacancy/SearchVacancy.dart';
import 'package:jobease/Login/Autorization.dart';

const List<String> vibor = <String>['Активно ищу работу', 'Рассматриваю предложения', 'Предложили работу, пока думаю', 'Не ищу работу'];
final List<String> entries1 = <String>['Программист 1C', 'Frontend-разработчик', 'backend-разработчик'];


//Экран акаунта
class Account extends StatefulWidget {
  const Account({super.key});

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    backgroundColor: const Color.fromARGB(255, 242, 242, 242),
  ),
   drawer: Drawer(
          child:  Column(
            children:[
              Container(
              margin: const EdgeInsets.only(top: 20, bottom: 30),
              width: 80,
              height: 80,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 74, 187, 80),
              ),
              child: const Center(
                child: Text(
                  'EJ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            ListTile(
              title: const Text(
                "О себе"
                ),
                leading: const Icon(
                  Icons.account_box
                  ),
              onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Profile()),
                  );
                },
            ),
            ListTile(
                title: const Text(
                  "Настройки"
                  ),
                leading: const Icon(
                  Icons.settings
                  ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Setting()),
                  );
                },
              ),
               Padding(
              padding: EdgeInsets.only(bottom:20, top: 400),
              child: SizedBox(
                width: 100,
                height: 40, 
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6), 
                    ),
                  ),
                  child: const Text(
                    'Выход',
                    style: TextStyle(
                    fontSize: 14, 
                    color: Colors.white
                    ),
                   ),
              onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Autorization()),
                  );
                },
                  ),
                ),
              ),
            ],
      ),
    ),
  backgroundColor: const Color.fromARGB(255, 242, 242, 242),
      body: SingleChildScrollView(
        child: Column(
          children: [ 
            const SizedBox(height: 5),
          Center(
            child: Row(
            children: [
            const SizedBox(width: 40),
             Column(
                children: [
                  Container(
              child: const Text(
                "Имя",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color.fromARGB(255, 88, 87, 91),
                      fontSize: 20,
                  )
                )
              ),
              const SizedBox(height: 25),
                Container(
                child: const Text(
                  "Фамилия",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color.fromARGB(255, 88, 87, 91),
                        fontSize: 20,                       
                      )
                    )
                  )
                ],
              ),
              const SizedBox(width: 90),
              Container(
                  width: 105,
                 height: 105,
                  decoration:  BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 3,
                    blurRadius: 4,
                      ),
                    ],
                  ),
                ),
              ],
            ),
        ),
            const SizedBox(height: 30),
            Container(
              width: 300,
              height: 70,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 247, 247, 247),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 3,
                    blurRadius: 4,
                  ),
                ],
              ),
              child: const Center(
                    child: DropdownMenuExample(),
                  ),
              ),
            const SizedBox(height: 20),
            SizedBox(
              height: 290,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                itemCount: entries1.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 70,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 247, 247, 247),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 3,
                          blurRadius: 4,
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            entries1[index],
                            style: const TextStyle(fontSize: 18),
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.arrow_forward_ios),
                          onPressed: () {
                          },
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 20),
              ),
            ),
            SizedBox(
                width: 270,
                height: 40, 
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                      backgroundColor:  const Color.fromARGB(255, 74, 187, 80),
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6), 
                    ),
                  ),
                  child: const Text(
                    'Создать новое резюме',
                    style: TextStyle(
                    fontSize: 14, 
                    color: Colors.white
                    ),
                   ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CreateResume()
                        ),
                      );   
                    },
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 242, 242, 242),
        child: Container(
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(color: Colors.grey, width: 1),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.search, color: Colors.black, size: 24),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SearchVacancy()),
                  );
                },
              ),
              IconButton(
                icon: const Icon(Icons.turned_in_not, color: Colors.black, size: 24),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Saved()),
                  );
                },
              ),
              IconButton(
                icon: const Icon(Icons.question_answer, 
                color: Colors.black, 
                size: 24),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Communication()),
                  );
                },
              ),
              IconButton(
                icon: const Icon(Icons.person, color: Colors.black, size: 24),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}



class DropdownMenuExample extends StatefulWidget {
  const DropdownMenuExample({super.key});

  @override
  State<DropdownMenuExample> createState() => _DropdownMenuExampleState();
}

class _DropdownMenuExampleState extends State<DropdownMenuExample> {
  String dropdownValue = vibor.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      style: const TextStyle(
        color: Color.fromARGB(255, 88, 87, 91),
        fontSize: 16
        ),
      underline: Container(
        height: 2,
        color: const Color.fromARGB(255, 247, 247, 247),
      ),
      onChanged: (String? value) {
        setState(() {
          dropdownValue = value!;
        });
      },
      items: vibor.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}