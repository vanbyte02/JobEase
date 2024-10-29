import 'package:flutter/material.dart';
import 'package:jobease/Employee/Profile/Account.dart';
import 'package:jobease/Employee/Data/Specializations.dart';

//Экран создания резюме
class CreateResume extends StatefulWidget {
  @override
  _CreateResumeState createState() => _CreateResumeState();
}

class _CreateResumeState extends State<CreateResume> {
  final PageController _pageController = PageController();
  int _currentStep = 0;
  String _selectedValue = '';

  void _nextPage() {
    if (_currentStep < 4) {
      setState(() {
        _currentStep++;
      });
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
    if(_currentStep == 4) {
      setState(() {
        Navigator.push(
          context,
            MaterialPageRoute(builder: (context) => Account()
          ),
        );
      });
    }
  }

  double _getProgress() {
    return (_currentStep + 1) / 4;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 242, 242),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 20, right: 20),

            child: LinearProgressIndicator(
              value: _getProgress(),
              backgroundColor: Colors.grey[300],
              color: const Color.fromARGB(255, 47, 177, 68),
              minHeight: 5,
            ),
          ),

          //1
          Expanded(
            child: PageView(
              controller: _pageController,
              physics: NeverScrollableScrollPhysics(),
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 70),
                      const Center(
                        child: Text(
                          "Кем бы вы хотели работать?",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      const SizedBox(height: 20),
                      ListTile(
                    title: const Text(
                      "Добавьте профессию",
                      style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 88, 87, 91),
                           ),
                          ),
                        leading: const Icon(
                          Icons.control_point,
                          size: 20
                          ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Specializations()
                                  ),
                                );   
                              },
                      ),  
                      const SizedBox(height: 70),
                      const Center(
                        child: Text(
                          "Укажите уровень дохода",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Сумма в месяц',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //2
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(
                        child: Text(
                          "Уровень вашего образования",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 88, 87, 91),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Column(
                        children: [
                          ListTile(
                            title: const Text('Среднее'),
                            leading: Radio(
                              activeColor: const Color.fromARGB(255, 74, 187, 80),
                              value: 'Среднее',
                              groupValue: _selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  _selectedValue = value as String;
                                });
                              },
                            ),
                          ),
                          ListTile(
                            title: const Text('Среднее специальное'),
                            leading: Radio(
                              activeColor: const Color.fromARGB(255, 74, 187, 80),
                              value: 'Среднее специальное',
                              groupValue: _selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  _selectedValue = value as String;
                                });
                                
                              },
                            ),
                          ),
                          ListTile(
                            title: const Text('Неоконченное высшее'),
                            leading: Radio(
                              activeColor: const Color.fromARGB(255, 74, 187, 80),
                              value: 'Неоконченное высшее',
                              groupValue: _selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  _selectedValue = value as String;
                                });
                                
                              },
                            ),
                          ),
                          ListTile(
                            title: const Text('Высшее'),
                            leading: Radio(
                              activeColor: const Color.fromARGB(255, 74, 187, 80),
                              value: 'Высшее',
                              groupValue: _selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  _selectedValue = value as String;
                                });
                                
                              },
                            ),
                          ),
                          ListTile(
                            title: const Text('Бакалавр'),
                            leading: Radio(
                              activeColor: const Color.fromARGB(255, 74, 187, 80),
                              value: 'Бакалавр',
                              groupValue: _selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  _selectedValue = value as String;
                                });
                                
                              },
                            ),
                          ),
                          ListTile(
                            title: const Text('Магистр'),
                            leading: Radio(
                              activeColor: const Color.fromARGB(255, 74, 187, 80),
                              value: 'Магистр',
                              groupValue: _selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  _selectedValue = value as String;
                                });
                                
                              },
                            ),
                          ),
                          ListTile(
                            title: const Text('Кандидат наук'),
                            leading: Radio(
                              activeColor: const Color.fromARGB(255, 74, 187, 80),
                              value: 'Кандидат наук',
                              groupValue : _selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  _selectedValue = value as String;
                                });
                               
                              },
                            ),
                          ),
                          ListTile(
                            title: const Text('Доктор наук'),
                            leading: Radio(
                              activeColor: const Color.fromARGB(255, 74, 187, 80),
                              value: 'Доктор наук',
                              groupValue: _selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  _selectedValue = value as String;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                //3
                 Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                         const Text(
                          "Где вы учились?",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 88, 87, 91),
                          ),
                        ),
                        const SizedBox(height: 40),
                        ListTile(
                title: const Text(
                  "Добавьте учебное заведение",
                  style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 88, 87, 91),
                           ),
                          ),
                        leading: const Icon(
                          Icons.control_point, 
                          size: 20
                          ),
                        onTap: (){}
                      ),  
                    ],
                  ),
                ),


                //4
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                         const Text(
                          "Опыт работы",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 88, 87, 91),
                          ),
                        ),
                        const SizedBox(height: 30),
                        ListTile(
                    title: const Text(
                      "Опыт работы",
                      style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 88, 87, 91),
                           ),
                          ),
                        leading: const Icon(
                          Icons.control_point,
                          size: 20
                          ),
                        onTap: (){}
                      ),  
                    ],
                  ),
                ),
              ],
            ),
          ),

       
          Padding(
            padding: const EdgeInsets.all(16),
            child: SizedBox(
              width: 270,
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                onPressed: _nextPage,
                child: const Text(
                  'Далее',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


