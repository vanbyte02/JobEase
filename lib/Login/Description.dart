import 'package:flutter/material.dart';
import 'package:jobease/Login/Autorization.dart';
import 'package:jobease/Login/Registration.dart';

//Экраны с описанием приложения

class Description extends StatefulWidget {
  const Description({Key? key}) : super(key: key);

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {

  List catalog = [
  Image.asset("lib/assets/images/Определиться.png"),
  Image.asset("lib/assets/images/Найти.png"),
  Image.asset("lib/assets/images/Упростить.png"),
  Image.asset("lib/assets/images/Зарегестрируйся.png")
];

  final PageController _pageController = PageController(initialPage: 0);

  int _activePage = 0;


  final List<Widget> _pages = [
    const Description1(),
    const Description2(),
    const Description3()
  ];



  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _activePage = page;
              });
            },
            itemCount: _pages.length,
            itemBuilder: (BuildContext context, int index) {
              return _pages[index % _pages.length];
            },
          ),
          Positioned(
            top: 600,
            left: 20,
            right: 20,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(
                    _pages.length,
                    (index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: InkWell(
                        onTap: () {
                          _pageController.animateToPage(index,
                          duration: const Duration(milliseconds: 1),
                          curve: Curves.easeIn);
                        },
                        child: CircleAvatar(
                        radius: 5,
                        backgroundColor: _activePage == index
                        ? const Color.fromARGB(255, 74, 187, 80)
                        : Color.fromARGB(255, 210, 200, 200),
                      ),
                    ),
                  )
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Description1 extends StatefulWidget {
  const Description1({super.key});

  @override
  _Description1 createState() => _Description1();
}
class _Description1 extends State<Description1> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 242, 242),
      body: Stack(
        children: [
          Positioned(
            top: 25,
            right: 15,
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
                Container(
                    width: 250,  
                    height: 250,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("lib/assets/images/Определиться.png"),
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
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
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    'Мы поможем тебе разобраться в своих желаниях и выбрать направление, которое подходит именно тебе.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 100, 100, 100),
                      fontSize: 14,
                    ),
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
  _Description2 createState() => _Description2();
}

class _Description2 extends State<Description2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 242, 242),
      body: Stack(
        children: [
          Positioned(
            top: 25,
            right: 15,
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
                Container(
                  width: 250,  
                  height: 250,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          "lib/assets/images/Найти.png"),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32),
                  child: Text(
                    'Найти множество вакансий.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 26, 26, 26),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 27.8),
                    child: Text(
                    'Мы предлагаем широкий выбор актуальных вакансий от лучших работодателей.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 100, 100, 100),
                      fontSize: 14,
                    ),
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
  _Description3 createState() => _Description3();
}

class _Description3 extends State<Description3> {
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
                Container(
                  width: 250,  
                  height: 250,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          "lib/assets/images/Упростить.png",
                          ),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                    
                  ),
                ),
                const SizedBox(height: 20),
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
                  padding: EdgeInsets.symmetric(horizontal: 32),
                  child: Text(
                    'С нами поиск работы станет простым и удобным.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 100, 100, 100),
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
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
                      'Дальше',
                      style: TextStyle(
                        fontSize: 14, 
                        color:Colors.white
                        ),
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
  _Description4 createState() => _Description4();
}

class _Description4 extends State<Description4> {
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
                Container(
                  width: 250,  
                  height: 250,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          "lib/assets/images/Зарегистрируйся.png",
                          ),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                    
                  ),
                ),
                const SizedBox(height: 50),
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
                const SizedBox(height: 50),
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
                    color: Colors.white
                    ),
                   ),
              onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Autorization()),
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
                      backgroundColor: const Color.fromARGB(255, 245, 240, 240),
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
                    MaterialPageRoute(builder: (context) => Registration()),
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