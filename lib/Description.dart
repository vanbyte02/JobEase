import 'package:flutter/material.dart';
import 'package:jobease/Login/Autorization.dart';
import 'package:jobease/Login/Registration.dart';


//Экраны с описанием приложения
class Description extends StatefulWidget {
  const Description({super.key});

  @override
  _DescriptionState createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 242, 242),
      body: Stack(
        children: [
          Positioned(
            top: 16,
            right: 16,
            child: TextButton(
              onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Description4(),
                        ),
                      );
                    },
              child: const Text(
                'Пропустить',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Image
                // Padding(
                //   padding: const EdgeInsets.only(bottom: 32.0),
                //   child: Image.asset(
                //      'assets/your_image.png', 
                //     width: 200,
                //     height: 200,
                //   ),
                // ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32),
                  child: Text(
                    'Определиться с идеальным карьерным путем.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.0),
                  child: Text(
                    'Мы поможем тебе разобраться в своих желаниях и выбрать направление, которое подходит именно тебе.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(height: 100),
                SizedBox(
                  width: 250,
                  height: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          const Color.fromARGB(255, 67, 160, 71),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    child: const Text(
                      'Дальше',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Description2(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}




class Description2 extends StatefulWidget {
  const Description2({super.key});

  @override
  _Description2State createState() => _Description2State();
}

class _Description2State extends State<Description2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 242, 242),
      body: Stack(
        children: [
          Positioned(
            top: 16,
            right: 16,
            child: TextButton(
              onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Description4(),
                        ),
                      );
                    },
              child: const Text(
                'Пропустить',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Image
                // Padding(
                //   padding: const EdgeInsets.only(bottom: 32.0),
                //   child: Image.asset(
                //      'assets/your_image.png', 
                //     width: 200,
                //     height: 200,
                //   ),
                // ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32),
                  child: Text(
                    'Найти множество вакансий.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.0),
                  child: Text(
                    'Мы предлагаем широкий выбор актуальных вакансий от лучших работодателей.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(height: 100),
                SizedBox(
                  width: 250,
                  height: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          const Color.fromARGB(255, 67, 160, 71),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    child: const Text(
                      'Дальше',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Description3(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}




class Description3 extends StatefulWidget {
  const Description3({super.key});

  @override
  _Description3State createState() => _Description3State();
}

class _Description3State extends State<Description3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 242, 242),
      body: Stack(
        children: [
          Positioned(
            top: 16,
            right: 16,
            child: TextButton(
              onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Description4(),
                        ),
                      );
                    },
              child: const Text(
                'Пропустить',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Image
                // Padding(
                //   padding: const EdgeInsets.only(bottom: 32.0),
                //   child: Image.asset(
                //      'assets/your_image.png', 
                //     width: 200,
                //     height: 200,
                //   ),
                // ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32),
                  child: Text(
                    'Упростить процесс поиска работы.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.0),
                  child: Text(
                    'С нами поиск работы станет простым и удобным.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(height: 100),
                SizedBox(
                  width: 250,
                  height: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          const Color.fromARGB(255, 67, 160, 71),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    child: const Text(
                      'Дальше',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Description4(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}




class Description4 extends StatefulWidget {
  const Description4({super.key});

  @override
  _Description4State createState() => _Description4State();
}

class _Description4State extends State<Description4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 242, 242),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Image
                // Padding(
                //   padding: const EdgeInsets.only(bottom: 32.0),
                //   child: Image.asset(
                //      'assets/your_image.png', 
                //     width: 200,
                //     height: 200,
                //   ),
                // ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32),
                  child: Text(
                    'Зарегистрируйся прямо сейчас и начни свой путь к успешной карьере!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 100),
                SizedBox(
                width: 250,
                height: 40, 
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 74, 187, 80),
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6), 
                    ),
                  ),
                  child: const Text(
                    'Войти',
                    style: TextStyle(
                    fontSize: 14, 
                    color: Colors.black
                    ),
                   ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Autorization()
                          ),
                        );
                      },
                    ),
                ),
                 const SizedBox(height: 24),
                SizedBox(
                width: 250,
                height: 40, 
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 245, 240, 240),
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6), 
                    ),
                  ),
                  child: const Text(
                    'Регистрация',
                    style: TextStyle(
                    fontSize: 14, 
                    color: Colors.black
                    ),
                   ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Registration()
                          ),
                        );
                      },
                    ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}