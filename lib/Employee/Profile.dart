import 'package:flutter/material.dart';
import 'package:jobease/Employee/Communication.dart';
import 'package:jobease/Employee/CreateVacancy.dart';
import 'package:jobease/Employee/Profile/DataUpdate.dart';
import 'package:jobease/Employee/Saved.dart';
import 'package:jobease/Employee/Vacancy.dart';

const List<String> vibor = <String>['Активно ищу работу', 'Рассматриваю предложения', 'Предложили работу, пока думаю', 'Не ищу работу'];
final List<String> entries1 = <String>['Программист 1C', 'Frontend-разработчик', 'backend-разработчик'];


//Экран профиля
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 242, 242),
      body: SingleChildScrollView(
        child: Column(
          children: [ 
            const SizedBox(height: 10),
                Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 10),
                  child: IconButton(
                    icon: const Icon(
                      Icons.menu, 
                      size: 30
                    ),
                    onPressed: () {},
                    ),
                  ),
                    Padding(
                      padding: EdgeInsets.only(left:190, right: 10),
                       child: Positioned(
                      top: 25,
                      right: 15,
                      child: TextButton(
                        onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const DataUpdate(),
                                  ),
                                );
                              },
                    child: const Text(
                      'Профиль',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20, 
                      ),
                    ),
                  ),
                ),
                      )
              ],
            ),
            const SizedBox(height: 20),
            Row(
            children: [
            const SizedBox(width: 50),
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
            const SizedBox(height: 40),
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
            const SizedBox(height: 20),
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
                  MaterialPageRoute(builder: (context) => CreateVacancy()
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
                    MaterialPageRoute(builder: (context) => const Vacancy()),
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
    return DropdownMenu<String>(
      initialSelection: vibor.first,
      onSelected: (String? value) {
        setState(() {
          dropdownValue = value!;
        });
      },
      dropdownMenuEntries: vibor.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(value: value, label: value);
      }).toList(),
    );
  }
}
