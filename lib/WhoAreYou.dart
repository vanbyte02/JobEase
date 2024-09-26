import 'package:flutter/material.dart';
import 'package:jobease/Employee/Employee.dart';
import 'package:jobease/Recruiter/Recruiter.dart';

//Экран выбора работник или работодатель
class WhoAreYou extends StatefulWidget {
  const WhoAreYou({super.key});

  @override
  _WhoAreYouState createState() => _WhoAreYouState();
}

class _WhoAreYouState extends State<WhoAreYou> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromARGB(255, 242, 242, 242),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 50),
            const Text(
              "Кто вы?",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromARGB(255, 88, 87, 91),
                fontSize: 36,
              ),
            ),
            const SizedBox(height: 150),
            Container(
              padding: const EdgeInsets.only(left: 60),
              child: GestureDetector(
                onTap: () {
                  
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Employee()),
                  );
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center, 
                  children: [
                    Container(
                      width: 45,
                      height: 45,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 88, 87, 91),
                      ),
                      child: const Icon(
                        Icons.person,
                        color: Colors.white, 
                        size: 25, 
                      ),
                    ),
                    const SizedBox(width: 10), 
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start, 
                      children: [
                        Text(
                          "Я соискатель",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Color.fromARGB(255, 88, 87, 91),
                            fontSize: 22,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Ищу работу",
                          textAlign: TextAlign.left, 
                          style: TextStyle(
                            color: Color.fromARGB(255, 88, 87, 91),
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 80), 
             Container(
              padding: const EdgeInsets.only(left: 60),
              child: GestureDetector(
                onTap: () {
                  
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Recruiter()),
                  );
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center, 
                  children: [
                    Container(
                      width: 45,
                      height: 45,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 88, 87, 91),
                      ),
                      child: const Icon(
                        Icons.person,
                        color: Colors.white, 
                        size: 27, 
                      ),
                    ),
                    const SizedBox(width: 10), 
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start, 
                      children: [
                        Text(
                          "Я работодатель",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Color.fromARGB(255, 88, 87, 91),
                            fontSize: 22,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Предлогаю работу",
                          textAlign: TextAlign.left, 
                          style: TextStyle(
                            color: Color.fromARGB(255, 88, 87, 91),
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}