import 'package:flutter/material.dart';
import 'package:jobease/Employee/Vacancy/SearchVacancy.dart';

//Экран вакансии
class Vacancy extends StatefulWidget {
  final Map<String, dynamic> vacancy;
  final List<String> respondedVacancies;

  const Vacancy({
    super.key,
    required this.vacancy,
    required this.respondedVacancies,
  });

  @override
  _VacancyState createState() => _VacancyState();
}

class _VacancyState extends State<Vacancy> {
  @override
  Widget build(BuildContext context) {
    String name = widget.vacancy['name'] ?? 'Название не указано';
    String company = widget.vacancy['employer']?['name'] ?? 'Компания не указана';
    String salary = widget.vacancy['salary']?['from']?.toString() ?? 'Зарплата не указана';
    String description = widget.vacancy['description'] ?? 'Описание не указано';
    List<dynamic> requirements = widget.vacancy['snippet']?['requirement'] != null
        ? [widget.vacancy['snippet']['requirement']]
        : ['Требования не указаны'];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 242, 242, 242),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, size: 25),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SearchVacancy()),
            );
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              savedVacancies.contains(name) 
                ? Icons.turned_in 
                : Icons.turned_in_not,
              color: savedVacancies.contains(name)
                  ? Color.fromARGB(255, 91, 90, 94)
                  : Color.fromARGB(255, 91, 90, 94),
              size: 27,
            ),
            onPressed: () {
              setState(() {
                if (savedVacancies.contains(name)) {
                  savedVacancies.remove(name);
                } else {
                  savedVacancies.add(name);
                }
              });
            },
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 242, 242, 242),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 91, 90, 94)),
            ),
            const SizedBox(height: 10),
            Text(
              company,
              style: const TextStyle(fontSize: 18, color: Color.fromARGB(255, 91, 90, 94)),
            ),
            const SizedBox(height: 10),
            Text(
              salary != 'Зарплата не указана' ? '$salary руб.' : salary,
              style: const TextStyle(fontSize: 16, color: Color.fromARGB(255, 91, 90, 94)),
            ),
            const SizedBox(height: 20),
            Text(
              'Описание',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 91, 90, 94)),
            ),
            const SizedBox(height: 5),
            Text(
              description,
              style: const TextStyle(fontSize: 16, color: Color.fromARGB(255, 91, 90, 94)),
            ),
            const SizedBox(height: 20),
            Text(
              'Требования',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 91, 90, 94)),
            ),
            const SizedBox(height: 5),
            for (var req in requirements)
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  req.toString(),
                  style: const TextStyle(fontSize: 16, color: Color.fromARGB(255, 91, 90, 94)),
                ),
              ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 242, 242, 242),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Center(
            child: SizedBox(
              width: 300,
              height: 45,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: widget.respondedVacancies.contains(name)
                      ? const Color.fromARGB(255, 91, 90, 94)
                      : const Color.fromARGB(255, 74, 187, 80),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                onPressed: widget.respondedVacancies.contains(name)
                    ? null
                    : () {
                        setState(() {
                          widget.respondedVacancies.add(name);
                        });
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Вы откликнулись на вакансию $name')),
                        );
                      },
                child: Text(
                  widget.respondedVacancies.contains(name) ? 'Вы откликнулись!' : 'Отозваться',
                  style: const TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}