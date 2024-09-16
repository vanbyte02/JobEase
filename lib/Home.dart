import 'package:flutter/material.dart';

//Экран Личного кабинета
class Account extends StatelessWidget {
  const Account ({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Личный кабинет'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              children: [
                Container(
                  width: 170,
                  height: 240,
                  padding: const EdgeInsets.all(10),
                  
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Container(
                      height: 40, 
                      width: 220, 
                      color: const Color.fromARGB(255, 230, 230, 230,
                    ),
                    alignment: Alignment.center,
                       
                      ),
                      const SizedBox(height: 15),
                    Container(
                      height: 40,
                      width: 220,
                      color: const Color.fromARGB(255, 230, 230, 230,
                      ),
                      alignment: Alignment.center,
                      
                      ),
                      const SizedBox(height: 15),
                    Container(
                      height: 40,
                    width: 220, 
                    color: const Color.fromARGB(255, 230, 230, 230,
                    ),
                    alignment: Alignment.center,
                     
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 70),
               SizedBox(),
            const SizedBox(height: 70),
            SizedBox(),
          ]
        ),
      ),
       
    );
  }
}