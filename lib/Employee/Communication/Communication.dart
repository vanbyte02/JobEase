import 'package:flutter/material.dart';
import 'package:jobease/Employee/Profile/Account.dart';
import 'package:jobease/Employee/Vacancy/Saved.dart';
import 'package:jobease/Employee/Vacancy/SearchVacancy.dart';
import 'package:jobease/Employee/Communication/HRDialog.dart';

//Экран чата с работодателями
class Communication extends StatefulWidget {
  const Communication({super.key});

  @override
  _CommunicationState createState() => _CommunicationState();
}

class _CommunicationState extends State<Communication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 242, 242),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              'Чат с работодателем',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 91, 90, 94),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: respondedVacancies.isEmpty
                  ? const Center(
                      child: Text(
                        'Откликнитесь, чтобы начать диалог!',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 91, 90, 94),
                        ),
                      ),
                    )
                  : ListView.separated(
                      padding: const EdgeInsets.all(10),
                      itemCount: respondedVacancies.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            // Переход на экран HRDialog
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HRDialog(),
                              ),
                            );
                          },
                          child: Container(
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
                            child: Center(
                              child: Text(respondedVacancies[index]),
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) =>
                          const SizedBox(height: 10),
                    ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 242, 242, 242),
        child: Container(
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Colors.grey,
                width: 1,
              ),
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
                    MaterialPageRoute(
                        builder: (context) => const SearchVacancy()),
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
                    MaterialPageRoute(
                      builder: (context) => Saved(savedVacancies: savedVacancies),
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
                    MaterialPageRoute(
                      builder: (context) => const Account(),
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
