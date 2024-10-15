import 'package:flutter/material.dart';

class CreateVacancy extends StatefulWidget {
  @override
  _CreateVacancyState createState() => _CreateVacancyState();
}

class _CreateVacancyState extends State<CreateVacancy> {
  final PageController _pageController = PageController();
  int _currentStep = 0;
  String _selectedEducationLevel = '';
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
  }

  double _getProgress() {
    return (_currentStep + 1) / 5;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 242, 242),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
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
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 70),
                      Center(
                        child: Text(
                          "Кем бы вы хотели работать?",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Поиск',
                          prefixIcon: const Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      const SizedBox(height: 70),
                      Center(
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
                SingleChildScrollView(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(
                        child: Text(
                          "Основная информация о вас",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 88, 87, 91),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const TextField(
                        decoration: InputDecoration(
                          labelText: 'Фамилия',
                        ),
                      ),
                      const SizedBox(height: 20),
                      const TextField(
                        decoration: InputDecoration(
                          labelText: 'Имя',
                        ),
                      ),
                      const SizedBox(height: 20),
                      const TextField(
                        decoration: InputDecoration(
                          labelText: 'Отчество',
                        ),
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        "Пол",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 88, 87, 91),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Radio(
                            value: 'Мужской',
                            groupValue: 'Пол',
                            onChanged: (value) {},
                          ),
                          const Text('Мужской'),
                          const SizedBox(width: 10),
                          Radio(
                            value: 'Женский',
                            groupValue: 'Пол',
                            onChanged: (value) {},
                          ),
                          const Text('Женский'),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const TextField(
                        decoration: InputDecoration(
                          labelText: 'Дата рождения',
                        ),
                      ),
                      const SizedBox(height: 20),
                      const TextField(
                        decoration: InputDecoration(
                          labelText: 'Электронная почта',
                        ),
                      ),
                      const SizedBox(height: 20),
                      const TextField(
                        decoration: InputDecoration(
                          labelText: 'Номер телефона',
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Город проживания',
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.control_point, size: 20),
                            onPressed: () {},
                          ),
                          const SizedBox(width: 5),
                          const Text('Добавить метро',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Гражданство',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 88, 87, 91),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.control_point, size: 20),
                            onPressed: () {},
                          ),
                          const SizedBox(width: 5),
                          const Text('Добавить гражданство',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                      Divider(
                        color: Color.fromARGB(255, 88, 87, 91),
                        height: 5,
                        thickness: 1,
                      ),
                      const SizedBox(height: 25),
                      const Text(
                        'Разрешение на работу',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 88, 87, 91),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.control_point, size: 20),
                            onPressed: () {},
                          ),
                          const SizedBox(width: 5),
                          const Text('Добавить разрешение',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                      Divider(
                        color: Color.fromARGB(255, 88, 87, 91),
                        height: 5,
                        thickness: 1,
                      ),
                    ],
                  ),
                ),

                //3
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "Уровень вашего образования",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 88, 87, 91),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Column(
                        children: [
                          ListTile(
                            title: Text('Среднее'),
                            leading: Radio(
                              value: 'Среднее',
                              groupValue: _selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  _selectedValue = value as String;
                                  _selectedEducationLevel = value ;
                                });
                              },
                            ),
                          ),
                          SizedBox(height: 10),
                          ListTile(
                            title: Text('Среднее специальное'),
                            leading: Radio(
                              value: 'Среднее специальное',
                              groupValue: _selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  _selectedValue = value as String;
                                  _selectedEducationLevel = value;
                                });
                                
                              },
                            ),
                          ),
                          SizedBox(height: 10),
                          ListTile(
                            title: Text('Неоконченное высшее'),
                            leading: Radio(
                              value: 'Неоконченное высшее',
                              groupValue: _selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  _selectedValue = value as String;
                                  _selectedEducationLevel = value;
                                });
                                
                              },
                            ),
                          ),
                          SizedBox(height: 10),
                          ListTile(
                            title: Text('Высшее'),
                            leading: Radio(
                              value: 'Высшее',
                              groupValue: _selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  _selectedValue = value as String;
                                  _selectedEducationLevel = value;
                                });
                                
                              },
                            ),
                          ),
                          SizedBox(height: 10),
                          ListTile(
                            title: Text('Бакалавр'),
                            leading: Radio(
                              value: 'Бакалавр',
                              groupValue: _selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  _selectedValue = value as String;
                                  _selectedEducationLevel = value;
                                });
                                
                              },
                            ),
                          ),
                          SizedBox(height: 10),
                          ListTile(
                            title: Text('Магистр'),
                            leading: Radio(
                              value: 'Магистр',
                              groupValue: _selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  _selectedValue = value as String;
                                  _selectedEducationLevel = value;
                                });
                                
                              },
                            ),
                          ),
                          SizedBox(height: 10),
                          ListTile(
                            title: Text('Кандидат наук'),
                            leading: Radio(
                              value: 'Кандидат наук',
                              groupValue : _selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  _selectedValue = value as String;
                                  _selectedEducationLevel = value;
                                });
                               
                              },
                            ),
                          ),
                          SizedBox(height: 10),
                          ListTile(
                            title: Text('Доктор наук'),
                            leading: Radio(
                              value: 'Доктор наук',
                              groupValue: _selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  _selectedValue = value as String;
                                  _selectedEducationLevel = value;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                //4
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "Где вы учились?",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 88, 87, 91),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Column(
                        children: [
                          
                        ],
                      ),
                    ],
                  ),
                ),

                //5
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "Где вы учились?",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 88, 87, 91),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Column(
                        children: [
                          
                        ],
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