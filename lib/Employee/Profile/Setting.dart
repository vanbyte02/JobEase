import 'package:flutter/material.dart';
import 'package:jobease/Employee/Account.dart';

//Экран Настроек
class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  _SettingState createState() => _SettingState();
}

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
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
              Text(
                    'Настройки',
                      style: TextStyle(
                      color: Color.fromARGB(255, 88, 87, 91),
                        fontSize: 30,
                    )
                  ),
                  SizedBox(height: 30),
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
                       Text(
                    'Уведомления',
                      style: TextStyle(
                      color: Color.fromARGB(255, 88, 87, 91),
                        fontSize: 24,
                      ),
                  ),
                  Divider(
                        color: Color.fromARGB(255, 88, 87, 91),
                      ),
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
                      ListTile(
                        title: const Text(
                        "Страна",
                        style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 88, 87, 91),
                            ),
                            ),
                            trailing: const Icon(
                           Icons.keyboard_arrow_right,
                          size: 25
                          ),
                        onTap: (){},
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
   
  String _selectedEducationLevel = ''; 
  String _selectedValue = '';
  
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
      body: Column(
        children: [
                    Column(
                        children: [
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
                          )
                        ],
                      ),
                
        ],
      )
    );
  }
}





