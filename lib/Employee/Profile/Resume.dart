import 'package:flutter/material.dart';

//Экран резюме
class Resume extends StatefulWidget {

  @override
  _ResumeState createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 242, 242, 242),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 25,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 242, 242, 242),
      body: const Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
             "Название профессии", 
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Ожидаемая зарпалата: 40000 - 50000 Руб.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Text(
              "Уровень образования",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Text(
              "Место обучения",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Text(
              "Опыт работы",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
