import 'package:flutter/material.dart';
import 'package:jobease/Employee/Profile/Setting.dart';
import 'package:flutter/services.dart';


//Экран восстановление пароля(Из настроек)
class ResetPassword extends StatefulWidget {
 
  const ResetPassword({super.key,});

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  
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
            MaterialPageRoute(builder: (context) => const Setting()
          ),
        );   
      },
    ),
   ),
      body:  Scaffold(
        backgroundColor: Color.fromARGB(255, 242, 242, 242),
        body:  Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Забыли пароль?',
                  style: TextStyle(
                    fontSize: 24,
                    color:  Color.fromARGB(255, 88, 87, 91),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                const Text('Введите адрес электронной почты, который вы указывали при регистрации, и мы вышлем письмо с инструкциями по восстановлению пароля.',
                style: TextStyle(
                    fontSize: 14,
                    color:  Color.fromARGB(255, 88, 87, 91),
                  ),
                ),
                const SizedBox(height: 50),
                 TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Container(
                width: 250,
                height: 40, 
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                      backgroundColor:  const Color.fromARGB(255, 74, 187, 80),
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6), 
                    ),
                  ),
                  child: const Text(
                    'Восстановить',
                    style: TextStyle(
                    fontSize: 14, 
                    color: Colors.white
                    ),
                   ),
              onPressed: () {
                        Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ResetPassword2()
                    ),
                  );  
                      },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



class ResetPassword2 extends StatefulWidget {
 
  const ResetPassword2({super.key,});

  @override
  _ResetPassword2State createState() => _ResetPassword2State();
}


class _ResetPassword2State extends State<ResetPassword2> {
  
 @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:  Scaffold(
        backgroundColor: Color.fromARGB(255, 242, 242, 242),
        body:  Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Введите код',
                  style: TextStyle(
                    fontSize: 24,
                    color:  Color.fromARGB(255, 88, 87, 91),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                const Text('Мы отправили код на ваш E-mail.',
                style: TextStyle(
                    fontSize: 14,
                    color:  Color.fromARGB(255, 88, 87, 91),
                  ),
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ 
                    SizedBox(
                      height: 60,
                      width: 40,
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(1)
                        ],
                        style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 30),
                    SizedBox(
                      height: 60,
                      width: 40,
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(1)
                        ],
                        style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 30),
                    SizedBox(
                      height: 60,
                      width: 40,
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(1)
                        ],
                        style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 30),
                    SizedBox(
                      height: 60,
                      width: 40,
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(1)
                        ],
                        style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Container(
                width: 250,
                height: 40, 
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                      backgroundColor:  const Color.fromARGB(255, 74, 187, 80),
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6), 
                    ),
                  ),
                  child: const Text(
                    'Продолжить',
                    style: TextStyle(
                    fontSize: 14, 
                    color: Colors.white
                    ),
                   ),
              onPressed: () {
                        Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ResetPassword3()
                    ),
                  );  
                      },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class ResetPassword3 extends StatefulWidget {
 
  const ResetPassword3({super.key,});

  @override
  _ResetPassword3State createState() => _ResetPassword3State();
}


class _ResetPassword3State extends State<ResetPassword3> {
  
 @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:  Scaffold(
        backgroundColor: Color.fromARGB(255, 242, 242, 242),
        body:  Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Придумайте пароль',
                  style: TextStyle(
                    fontSize: 24,
                    color:  Color.fromARGB(255, 88, 87, 91),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 50),
                 TextField(
                  decoration: InputDecoration(
                    labelText: 'Введите пароль',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                 const SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Повторите пароль',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Container(
                width: 250,
                height: 40, 
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                      backgroundColor:  const Color.fromARGB(255, 74, 187, 80),
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6), 
                    ),
                  ),
                  child: const Text(
                    'Восстановить',
                    style: TextStyle(
                    fontSize: 14, 
                    color: Colors.white
                    ),
                   ),
              onPressed: () {
                        Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Setting()
                    ),
                  );  
                      },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
