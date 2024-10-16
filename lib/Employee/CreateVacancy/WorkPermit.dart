import 'package:flutter/material.dart';


class WorkPermit extends StatefulWidget {
  const WorkPermit({super.key});

  @override
  _WorkPermitState createState() => _WorkPermitState();
}

class _WorkPermitState extends State<WorkPermit> {
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


