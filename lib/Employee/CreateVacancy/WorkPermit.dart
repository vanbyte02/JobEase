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
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              children: [
                const SizedBox(width: 10),
                IconButton(
                      icon: const Icon(
                      Icons.arrow_back_ios, 
                      size: 20
                     ),
                      onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
            const SizedBox(width: 20),
              Container(
                width: 260,
                height: 40,
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
                child: Center(
                  child: TextField(
                    decoration: const InputDecoration(
                      contentPadding:
                           EdgeInsets.symmetric(
                            vertical: 6, 
                           horizontal: 10),
                      prefixIcon:  Icon(
                        Icons.search
                      ),
                      hintText: 'Поиск...',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              ]
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

