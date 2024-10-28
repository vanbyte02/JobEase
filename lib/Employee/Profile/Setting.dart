import 'package:flutter/material.dart';
import 'package:jobease/Employee/Profile/Account.dart';
import 'package:jobease/Employee/Profile/ResetPassword.dart';

//Экран Настроек
class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  _SettingState createState() => _SettingState();
}

// var _locale = S.en;

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
      body:  SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
              Text(
                    'Настройки',
                    // _locale.languageCode.toUpperCase(),
                      style: TextStyle(
                      color: Color.fromARGB(255, 88, 87, 91),
                        fontSize: 30,
                    )
                  ),
                  SizedBox(height: 70),
                  Text(
                    'Акаунт',
                      style: TextStyle(
                      color: Color.fromARGB(255, 88, 87, 91),
                        fontSize: 24,
                      ),
                  ),
                  Divider(
                        color: Color.fromARGB(255, 88, 87, 91),
                      ),
                      ListTile(
                          title: const Text(
                      "Восстановить пароль",
                      style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 88, 87, 91),
                           ),
                          ),
                          trailing: const Icon(
                          Icons.navigate_next,
                          size: 25
                          ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ResetPassword()
                                  ),
                                );   
                              },
                      ), 
                      SizedBox(height: 30), 
                       Text(
                    'Системные',
                      style: TextStyle(
                      color: Color.fromARGB(255, 88, 87, 91),
                        fontSize: 24,
                      ),
                  ),
                  Divider(
                        color: Color.fromARGB(255, 88, 87, 91),
                      ),
                      ListTile(
                          title: const Text(
                      "Язык",
                      style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 88, 87, 91),
                           ),
                          ),
                          trailing: const Icon(
                          Icons.navigate_next,
                          size: 25
                          ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Language()
                                  ),
                                );   
                              },
                            ), 
                ],
              )
            ),   
          ],
        ),
      ),
    );
  }
}
        




class Language extends StatefulWidget {
  const Language({super.key});

  @override
  _LanguageState createState() => _LanguageState();
}


class _LanguageState extends State<Language> {
   
  String _selectedValue = 'Русский';
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
    backgroundColor: const Color.fromARGB(255, 242, 242, 242),
    leading: IconButton(
         icon: const Icon(
             Icons.arrow_back_ios, 
              size: 25
               ),
               onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            backgroundColor: const Color.fromARGB(255, 242, 242, 242),
                body: Column(
                  children: [
                    SizedBox(height: 150),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Radio(
                              activeColor: Color.fromARGB(255, 74, 187, 80),
                              value: 'Русский',
                              groupValue: _selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  _selectedValue = value as String;
                                });
                              },
                            ),
                        const Text('Русский',
                          style: TextStyle(
                            fontSize: 20,
                            color:  Color.fromARGB(255, 88, 87, 91),
                          ),                        
                        ),
                      ],
                     ),
                     SizedBox(height: 20),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Radio(
                              activeColor: Color.fromARGB(255, 74, 187, 80),
                              value: 'Английский',
                              groupValue: _selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  _selectedValue = value as String;
                                  
                                });
                              },
                            ),
                        const Text('Английский',
                          style: TextStyle(
                            fontSize: 20,
                            color:  Color.fromARGB(255, 88, 87, 91),
                          ),  
                        ),
                      ],
                    ),
        ],
      ), 
    );
  }
}