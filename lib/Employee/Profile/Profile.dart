import 'package:flutter/material.dart';
import 'package:jobease/Employee/Profile/DataUpdate.dart';

//Экран профиля
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  backgroundColor: const Color.fromARGB(255, 242, 242, 242),
      body: SingleChildScrollView(
        child: Column(
          children: [
             Container(
                  width: 120,
                 height: 120,
                  decoration:  BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 3,
                    blurRadius: 4,
                      ),
                    ],
                  ),
                ),
                ListTile(
                    title: const Text(
                      "Редактировать",
                      style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 88, 87, 91),
                           ),
                          ),
                        leading: const Icon(
                          Icons.create,
                          size: 20
                          ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DataUpdate()
                                  ),
                                );   
                              },
                      ),  
                      ListTile(
                    title: const Text(
                      "Изменить фото",
                      style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 88, 87, 91),
                           ),
                          ),
                        leading: const Icon(
                          Icons.add_photo_alternate,
                          size: 20
                          ),
                        onTap: (){},
                      ),  
                      const Text(
                        textAlign: TextAlign.left,
                        'Фамилия',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 88, 87, 91),
                        ),
                      ),
                      const Divider(
                        color: Color.fromARGB(255, 88, 87, 91),
                        height: 5,
                        thickness: 1,
                        indent: 15, 
                        endIndent: 15,
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Имя',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 88, 87, 91),
                        ),
                      ),
                      const Divider(
                        color: Color.fromARGB(255, 88, 87, 91),
                        height: 5,
                        thickness: 1,
                        indent: 15, 
                        endIndent: 15,
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Отчество',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 88, 87, 91),
                        ),
                      ),
                      const Divider(
                        color: Color.fromARGB(255, 88, 87, 91),
                        height: 5,
                        thickness: 1,
                        indent: 15, 
                        endIndent: 15,
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        "Пол: Мужской",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 88, 87, 91),
                        ),
                      ),
                      const Divider(
                        color: Color.fromARGB(255, 88, 87, 91),
                        height: 5,
                        thickness: 1,
                        indent: 15, 
                        endIndent: 15,
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Дата рождения :',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 88, 87, 91),
                        ),
                      ),
                      const Divider(
                        color: Color.fromARGB(255, 88, 87, 91),
                        height: 5,
                        thickness: 1,
                        indent: 15, 
                        endIndent: 15,
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Электронная почта: ',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 88, 87, 91),
                        ),
                      ),
                      const Divider(
                        color: Color.fromARGB(255, 88, 87, 91),
                        height: 5,
                        thickness: 1,
                        indent: 15, 
                        endIndent: 15,
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Номер телефона:',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 88, 87, 91),
                        ),
                      ),
                      const Divider(
                        color: Color.fromARGB(255, 88, 87, 91),
                        height: 5,
                        thickness: 1,
                        indent: 15, 
                        endIndent: 15,
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Город проживания: ',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 88, 87, 91),
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Метро: ',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 88, 87, 91),
                        ),
                      ),
                      const Divider(
                        color: Color.fromARGB(255, 88, 87, 91),
                        height: 5,
                        thickness: 1,
                        indent: 15, 
                        endIndent: 15,
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Гражданство:',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 88, 87, 91),
                        ),
                      ), 
                      const Divider(
                        color: Color.fromARGB(255, 88, 87, 91),
                       height: 5,
                        thickness: 1,
                        indent: 15, 
                        endIndent: 15,
                      ),
          ]
        ),
      ),
    );
  }
}



