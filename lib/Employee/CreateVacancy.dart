import 'package:flutter/material.dart';

//Экран с созданием вакансии
class CreateVacancy extends StatefulWidget {
  @override
  _CreateVacancyState createState() => _CreateVacancyState();
}

class _CreateVacancyState extends State<CreateVacancy> {
  final PageController _pageController = PageController();
  int _currentStep = 0;

  void _nextPage() {
    if (_currentStep < 2) {
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
    return (_currentStep + 1) / 4;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Заполнение резюме"),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.more_vert, color: Colors.black),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
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
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Кем бы вы хотели работать?",
                        style: TextStyle(fontSize: 18),
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Поиск',
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Уровень дохода",
                        style: TextStyle(fontSize: 18),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Сумма в месяц',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        keyboardType: TextInputType.number,
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
                      const Text(
                        "Основная информация о вас",
                        style: TextStyle(fontSize: 18),
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Фамилия',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Имя',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Отчество',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text("Пол"),
                      Row(
                        children: [
                          Radio(
                            value: 'Мужской',
                            groupValue: 'Пол',
                            onChanged: (value) {},
                          ),
                          const Text('Мужской'),
                          Radio(
                            value: 'Женский',
                            groupValue: 'Пол',
                            onChanged: (value) {},
                          ),
                          const Text('Женский'),
                        ],
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Дата рождения',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Электронная почта',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        keyboardType: TextInputType.emailAddress,
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
                      const Text(
                        "Уровень вашего образования",
                        style: TextStyle(fontSize: 18),
                      ),
                      const SizedBox(height: 20),
                      Column(
                        children: const [
                          ListTile(
                            title: Text('Среднее'),
                            leading: Radio(value: 'Среднее', groupValue: 'Образование', onChanged: null),
                          ),
                          ListTile(
                            title: Text('Среднее специальное'),
                            leading: Radio(value: 'Среднее специальное', groupValue: 'Образование', onChanged: null),
                          ),
                          ListTile(
                            title: Text('Неоконченное высшее'),
                            leading: Radio(value: 'Неоконченное высшее', groupValue: 'Образование', onChanged: null),
                          ),
                          ListTile(
                            title: Text('Бакалавр'),
                            leading: Radio(value: 'Бакалавр', groupValue: 'Образование', onChanged: null),
                          ),
                          ListTile(
                            title: Text('Магистр'),
                            leading: Radio(value: 'Магистр', groupValue: 'Образование', onChanged: null),
                          ),
                          ListTile(
                            title: Text('Кандидат наук'),
                            leading: Radio(value: 'Кандидат наук', groupValue: 'Образование', onChanged: null),
                          ),
                          ListTile(
                            title: Text('Доктор наук'),
                            leading: Radio(value: 'Доктор наук', groupValue: 'Образование', onChanged: null),
                          ),
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
                  color: Colors.white
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