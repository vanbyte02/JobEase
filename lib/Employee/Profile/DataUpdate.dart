import 'package:flutter/material.dart';
import 'package:jobease/Employee/Profile/Metro.dart';
import 'package:jobease/Employee/Profile/Nationality.dart';

//Экран с личными данными пользователя
class DataUpdate extends StatefulWidget {

  const DataUpdate ({super.key});

  @override
  _DataUpdateState createState() => _DataUpdateState();
}

String _selectedEducationLevel = ''; 
String _selectedValue = '';

class _DataUpdateState extends State<DataUpdate > {
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                children: [
                  IconButton(
                      icon: const Icon(
                      Icons.arrow_back_ios, 
                      size: 20
                     ),
                      onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(width: 45),
                  const  Center(
                        child: Text(
                          "Основная информация о вас",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 88, 87, 91),
                          ),
                        ),
                      ),
                        ],
                      ),
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
                              groupValue: _selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  _selectedValue = value as String;
                                  _selectedEducationLevel = value;
                                });
                              },
                            ),
                          const Text('Мужской'),
                          const SizedBox(width: 10),
                          Radio(
                              value: 'Женский',
                              groupValue: _selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  _selectedValue = value as String;
                                  _selectedEducationLevel = value;
                                });
                              },
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
                      const TextField(
                        decoration: InputDecoration(
                          labelText: 'Город проживания',
                        ),
                      ),
                      const SizedBox(height: 5),
                      ListTile(
                    title: const Text(
                      "Добавить метро",
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
                            MaterialPageRoute(builder: (context) => Metro()
                                  ),
                                );   
                              },
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
                      ListTile(
                    title: const Text(
                      "Добавить гражданство",
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
                            MaterialPageRoute(builder: (context) => Nationality()
                                  ),
                                );   
                              },
                            ),  
                      const Divider(
                        color: Color.fromARGB(255, 88, 87, 91),
                        height: 5,
                        thickness: 1,
                      ),
              const SizedBox(height: 20),
              Center(
                child: Container(
            child: SizedBox(
                width: 250,
                height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
               onPressed: () {
                },
                child: const Text(
                  'Сохранить',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
              ),
            ],
          ),
        ),
      ),
      
      // bottomNavigationBar: BottomAppBar(
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     children: <Widget>[
      //       Container(
      //       child: SizedBox(
      //           width: 250,
      //           height: 40,
      //         child: ElevatedButton(
      //           style: ElevatedButton.styleFrom(
      //             backgroundColor: Colors.green,
      //             shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(6),
      //             ),
      //           ),
      //          onPressed: () {
      //           },
      //           child: const Text(
      //             'Сохранить',
      //             style: TextStyle(
      //               fontSize: 16,
      //               color: Colors.white,
      //               ),
      //             ),
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // )
    );
  }
}
 


