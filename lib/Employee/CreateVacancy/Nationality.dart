import 'package:flutter/material.dart';


class Nationality extends StatefulWidget {
  const Nationality({super.key});

  @override
  _NationalityState createState() => _NationalityState();
}

class _NationalityState extends State<Nationality> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 242, 242),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50),
            const Text(
              'Мои резюме',
              style: TextStyle(
                fontSize: 28,
                color: Color.fromARGB(255, 91, 90, 94),
              ),
            ),
          ],
        ),
      ),
      
    );
  }
}


