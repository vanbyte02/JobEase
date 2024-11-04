import 'package:flutter/material.dart';
import 'package:jobease/Employee/Communication/Communication.dart';


//Экран общения с работодателем
class HRDialog extends StatefulWidget {
 
  const HRDialog({super.key,});

  @override
  _HRDialogState createState() => _HRDialogState();
}

class _HRDialogState extends State<HRDialog> {
  
 @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
    backgroundColor: const Color.fromARGB(255, 242, 242, 242),
    centerTitle: true,
    title: Text('НАЗВАНИЕ КОМПАНИИ',
                  style: TextStyle(
                    fontSize: 16, 
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    ),
                  ),
    leading: IconButton(
         icon: const Icon(
             Icons.arrow_back_ios, 
              size: 25
               ),
              onPressed: () {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Communication()
          ),
        );   
      },
    ),
   ),
      backgroundColor: const Color.fromARGB(255, 242, 242, 242),
   body: Center(
     child: Column(
      children: [
        ]
      )
    ),
    bottomNavigationBar: BottomAppBar(
      color: const Color.fromARGB(255, 242, 242, 242),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
            child: SizedBox(
                width: 325,
                height: 45,
              child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(  
                    border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
                    ),
                    suffixIcon: const Icon(
                      Icons.add
                      ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 5),
            Container(
              child: SizedBox(
                width: 35,
                height: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                     padding: EdgeInsets.zero,
                  ),
                  onPressed: () {
                    
                  },
                  child: Center(
                    child: Icon(
                      Icons.expand_less_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}