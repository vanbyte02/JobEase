import 'package:flutter/material.dart';

// Экран выбора гражданства
class Nationality extends StatefulWidget {
  const Nationality({super.key});

  @override
  _NationalityState createState() => _NationalityState();
}

String selectedNationality = '';

class _NationalityState extends State<Nationality> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              children: [
                const SizedBox(width: 10),
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios, size: 20),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(width: 20),
              ],
            ),
            const SizedBox(height: 30),
            nationalityCheckbox('Россия'),
            const SizedBox(height: 10),
            nationalityCheckbox('Беларусь'),
            const SizedBox(height: 10),
            nationalityCheckbox('Казахстан'),
            const SizedBox(height: 10),
            nationalityCheckbox('Узбекистан'),
            const SizedBox(height: 10),
            nationalityCheckbox('Украина'),
            const SizedBox(height: 10),
            nationalityCheckbox('Таджикистан'),
            const SizedBox(height: 10),
            nationalityCheckbox('Армения'),
            const SizedBox(height: 10),
            nationalityCheckbox('Азербайджан'),
            const SizedBox(height: 10),
            nationalityCheckbox('Молдова'),
            const SizedBox(height: 10),
            nationalityCheckbox('Туркменистан'),
            const SizedBox(height: 10),
            nationalityCheckbox('Другое'),
          ],
        ),
      ),
    );
  }

  Widget nationalityCheckbox(String nationality) {
    return Row(
      children: [
        const SizedBox(width: 30),
        Radio<String>(
          value: nationality,
          groupValue: selectedNationality,
          onChanged: (String? value) {
            setState(() {
              selectedNationality = value!;
              Navigator.pop(context, selectedNationality);
            });
          },
          activeColor: const Color.fromARGB(255, 74, 187, 80),
        ),
        const SizedBox(width: 10),
        Text(
          nationality,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
