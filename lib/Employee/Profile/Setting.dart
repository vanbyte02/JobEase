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
  backgroundColor: const Color.fromARGB(255, 242, 242, 242),
      body: SingleChildScrollView(
        child:  Column(
          children: [
            const SizedBox(height: 30, width: 60),
                IconButton(
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
          ],
        ),
      ),
    );
  }
}
        