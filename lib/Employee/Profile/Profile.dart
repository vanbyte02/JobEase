import 'package:flutter/material.dart';
import 'package:jobease/Employee/Profile/Account.dart';
import 'package:jobease/Employee/Data/DataUpdate.dart';

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
       appBar: AppBar(
    backgroundColor: const Color.fromARGB(255, 242, 242, 242),
   leading: IconButton(
         icon: const Icon(
             Icons.arrow_back_ios, 
              size: 25
               ),
              onPressed: () {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Account()
          ),
        );   
      },
    ),
   ),
  backgroundColor: const Color.fromARGB(255, 242, 242, 242),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            Center(
              child: Row(
              children: [
                SizedBox(width: 20),
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
                SizedBox(width: 10),
                Column(
                  children: [
                    SizedBox(
                width: 200,
                height: 30,
                child: ListTile(
                    title: const Text(
                      "Редактировать",
                      style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 88, 87, 91),
                           ),
                          ),
                        leading: const Icon(
                          Icons.create,
                          size: 16
                          ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DataUpdate()
                                  ),
                                );   
                              },
                      ),  
                 ),
                  SizedBox(height: 10),
                SizedBox(
                  width: 200,
                  height: 30,
                child: ListTile(
                    title: const Text(
                      "Изменить фото",
                      style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 88, 87, 91),
                           ),
                          ),
                        leading: const Icon(
                          Icons.add_photo_alternate,
                          size: 17
                          ),
                        onTap: (){
                          //getImages(); 
                        },
                      ), 
                    ), 
                  ],
                )
              ],
            ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                        'Фамилия',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 88, 87, 91),
                          ),
                        ),
                      const SizedBox(height: 2),
                      const Divider(
                        color: Color.fromARGB(255, 88, 87, 91),
                        height: 5,
                        thickness: 1,
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Имя',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 88, 87, 91),
                        ),
                      ),
                      const SizedBox(height: 2),
                      const Divider(
                        color: Color.fromARGB(255, 88, 87, 91),
                        height: 5,
                        thickness: 1,
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Отчество',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 88, 87, 91),
                        ),
                      ),
                      const SizedBox(height: 2),
                       Divider(
                        color: Color.fromARGB(255, 88, 87, 91),
                        height: 5,
                        thickness: 1,
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Пол: ",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 88, 87, 91),
                        ),
                      ),
                      const SizedBox(height: 2),
                      const Divider(
                        color: Color.fromARGB(255, 88, 87, 91),
                        height: 5,
                        thickness: 1,
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Дата рождения:',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 88, 87, 91),
                        ),
                      ),
                      const SizedBox(height: 2),
                      const Divider(
                        color: Color.fromARGB(255, 88, 87, 91),
                        height: 5,
                        thickness: 1,
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Электронная почта: ',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 88, 87, 91),
                        ),
                      ),
                      const SizedBox(height: 2),
                      const Divider(
                        color: Color.fromARGB(255, 88, 87, 91),
                        height: 5,
                        thickness: 1,
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Номер телефона:',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 88, 87, 91),
                        ),
                      ),
                      const SizedBox(height: 2),
                      const Divider(
                        color: Color.fromARGB(255, 88, 87, 91),
                        height: 5,
                        thickness: 1,
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Город проживания: ',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 88, 87, 91),
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Метро: ',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 88, 87, 91),
                        ),
                      ),
                      const SizedBox(height: 2),
                      const Divider(
                        color: Color.fromARGB(255, 88, 87, 91),
                        height: 5,
                        thickness: 1,
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Гражданство:',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 88, 87, 91),
                        ),
                      ),
                      const SizedBox(height: 2), 
                      const Divider(
                        color: Color.fromARGB(255, 88, 87, 91),
                       height: 5,
                        thickness: 1,
                      ),
                      SizedBox(height: 20),
                  ],
                )
              ),
          ]
        ),
      ),
    );
  }
}



