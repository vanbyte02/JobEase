import 'package:flutter/material.dart';

// Экран авторизации
class WhoAreYou extends StatefulWidget {
  const WhoAreYou({super.key});

  @override
  _WhoAreYouState createState() => _WhoAreYouState();
}

class _WhoAreYouState extends State<WhoAreYou> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 23, 23, 31),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 50),
            const Text(
              "Кто вы?",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 36,
              ),
            ),
            const SizedBox(height: 150),
            Container(
              padding: const EdgeInsets.only(left: 60),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center, 
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white, 
                    ),
                    child: const Icon(
                      Icons.person,
                      color: Colors.black, 
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
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Ищу работу",
                        textAlign: TextAlign.left, 
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 80), 
            Container(
              padding: const EdgeInsets.only(left: 60),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center, 
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white, 
                    ),
                    child: const Icon(
                      Icons.person,
                      color: Colors.black, 
                      size: 25, 
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
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Предлогаю работу",
                        textAlign: TextAlign.left, 
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}