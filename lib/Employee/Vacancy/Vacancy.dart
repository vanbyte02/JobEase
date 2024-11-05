import 'package:flutter/material.dart';

class Vacancy extends StatelessWidget {
  final Map<String, dynamic> vacancy;

  const Vacancy({super.key, required this.vacancy});

  @override
  Widget build(BuildContext context) {
    String name = vacancy['name'] ?? 'Название не указано';
    String company = vacancy['employer']?['name'] ?? 'Компания не указана';
    String salary = vacancy['salary']?['from']?.toString() ?? 'Зарплата не указана';
    String description = vacancy['description'] ?? 'Описание не указано';
    List<dynamic> requirements = vacancy['snippet']?['requirement'] != null
        ? [vacancy['snippet']['requirement']]
        : ['Требования не указаны'];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 242, 242, 242),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, size: 25),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.turned_in_not, color: Colors.black, size: 27),
            onPressed: () {
              
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
              style: const TextStyle(fontSize: 22, 
              fontWeight: FontWeight.bold, 
              color: Color.fromARGB(255, 91, 90, 94)
              ),
            ),
            const SizedBox(height: 10),
            Text(
              company,
              style: const TextStyle(fontSize: 18, 
              color: Color.fromARGB(255, 91, 90, 94)
              ),
            ),
            const SizedBox(height: 10),
            Text(
              salary != 'Зарплата не указана' ? '$salary руб.' : salary,
              style: const TextStyle(fontSize: 16, 
              color: Color.fromARGB(255, 91, 90, 94)
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Описание',
              style: const TextStyle(fontSize: 20, 
              fontWeight: FontWeight.bold, 
              color: Color.fromARGB(255, 91, 90, 94)
              ),
            ),
            const SizedBox(height: 5),
            Text(
              description,
              style: const TextStyle(fontSize: 16, 
              color: Color.fromARGB(255, 91, 90, 94)),
            ),
            const SizedBox(height: 20),
            Text(
              'Требования',
              style: const TextStyle(fontSize: 20,
               fontWeight: FontWeight.bold, 
               color: Color.fromARGB(255, 91, 90, 94)
               ),
            ),
            const SizedBox(height: 5),
            for (var req in requirements)
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  req.toString(),
                  style: const TextStyle(fontSize: 16, 
                  color: Color.fromARGB(255, 91, 90, 94)
                  ),
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
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                onPressed: () {

                },
                child: const Text(
                  'Отозваться',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
