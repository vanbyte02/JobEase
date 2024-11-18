import 'package:flutter/material.dart';
import 'package:jobease/Employee/Communication/Communication.dart';
import 'package:jobease/Employee/Profile/Account.dart';
import 'package:jobease/Employee/Vacancy/SearchVacancy.dart';

//Экран с сохраненными вакансиями
class Saved extends StatefulWidget {
  final List<String> savedVacancies;

  const Saved({super.key, required this.savedVacancies});

  @override
  _SavedState createState() => _SavedState();
}

class _SavedState extends State<Saved> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 242, 242),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              'Избранное',
              style: TextStyle(
                fontSize: 16, 
                color: Color.fromARGB(255, 91, 90, 94),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: widget.savedVacancies.isEmpty
                  ?  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 247, 247, 247),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 3,
                                blurRadius: 4,
                              ),
                            ]
                          ),
                          child: Icon(
                            Icons.turned_in_not,
                              size: 50,
                                color: Color.fromARGB(255, 91, 90, 94),
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          'Избранных пока нет',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 91, 90, 94),
                          ),
                        ),
                      ],
                    )
                  : ListView.separated(
                      padding: const EdgeInsets.all(10),
                      itemCount: widget.savedVacancies.length,
                      itemBuilder: (BuildContext context, int index) {
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
                          height: 120,
                          child: Stack(
                            children: [
                              Center(
                                child: Text(widget.savedVacancies[index]),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: IconButton(
                                  icon: Icon(
                                    widget.savedVacancies.contains(widget.savedVacancies[index]) 
                                        ? Icons.turned_in 
                                        : Icons.turned_in_not,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      if (widget.savedVacancies.contains(widget.savedVacancies[index])) {
                                        widget.savedVacancies.remove(widget.savedVacancies[index]);
                                      } else {
                                        widget.savedVacancies.add(widget.savedVacancies[index]);
                                      }
                                    });
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
                    MaterialPageRoute(builder: (context) => const SearchVacancy()),
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Communication()),
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
                    MaterialPageRoute(builder: (context) => const Account()),
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
