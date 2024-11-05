import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jobease/Employee/Data/MetroAPI.dart';
import 'package:jobease/Employee/Data/Nationality.dart';



class UserData {
  String lastName;
  String firstName;
  String middleName;
  String gender;
  String birthDate;
  String email;
  String phone;
  String city;
  String metroStations;
  String nationality;

  UserData({
    required this.lastName,
    required this.firstName,
    required this.middleName,
    required this.gender,
    required this.birthDate,
    required this.email,
    required this.phone,
    required this.city,
    required this.metroStations,
    required this.nationality,
  });
}



//Экран с личными данными пользователя
class DataUpdate extends StatefulWidget {
  const DataUpdate({super.key});

  @override
  _DataUpdateState createState() => _DataUpdateState();
}

class _DataUpdateState extends State<DataUpdate> {
  List<String> selectedStations = [];
  List<String> selectedNationalities = [];
  String _selectedValue = '';
  String nationalityText = "Добавить гражданство";

  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _middleNameController = TextEditingController();
  final TextEditingController _birthDateController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();

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
                    icon: const Icon(Icons.arrow_back_ios, size: 20),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(width: 20),
                  const Center(
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
               TextField(
                controller: _lastNameController,
                decoration: InputDecoration(
                  labelText: 'Фамилия'
                ),
                keyboardType: TextInputType.text,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Zа-яА-ЯёЁ]')),
                ],
              ),
              const SizedBox(height: 20),
               TextField(
                controller: _firstNameController,
                decoration: InputDecoration(
                  labelText: 'Имя'
                ),
                keyboardType: TextInputType.text,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Zа-яА-ЯёЁ]')),
                ],
              ),
              const SizedBox(height: 20),
               TextField(
                controller: _middleNameController,
                decoration: InputDecoration(
                  labelText: 'Отчество'
                ),
                keyboardType: TextInputType.text,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Zа-яА-ЯёЁ]')),
                ],
              ),
              const SizedBox(height: 30),
              const Text("Пол", style: 
              TextStyle(fontSize: 15, 
              color: Color.fromARGB(255, 88, 87, 91)
                )
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Radio(
                    activeColor: Color.fromARGB(255, 74, 187, 80),
                    value: 'Мужской',
                    groupValue: _selectedValue,
                    onChanged: (value) {
                      setState(() {
                        _selectedValue = value as String;
                      });
                    },
                  ),
                  const Text('Мужской'),
                  const SizedBox(width: 10),
                  Radio(
                    activeColor: Color.fromARGB(255, 74, 187, 80),
                    value: 'Женский',
                    groupValue: _selectedValue,
                    onChanged: (value) {
                      setState(() {
                        _selectedValue = value as String;
                      });
                    },
                  ),
                  const Text('Женский'),
                ],
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _birthDateController,
                decoration: const InputDecoration(
                  labelText: 'Дата рождения'
                ),
              ),
              const SizedBox(height: 20),
               TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Электронная почта'
                ),
              ),
              const SizedBox(height: 20),
               TextField(
                controller: _phoneController,
                decoration: InputDecoration(
                  labelText: 'Номер телефона'
                ),
                keyboardType: TextInputType.phone,
                inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(11)
                  ],
              ),
              const SizedBox(height: 20),
               TextField(
                controller: _cityController,
                decoration: InputDecoration(
                  labelText: 'Город проживания'
                  ),
                  keyboardType: TextInputType.text,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Zа-яА-ЯёЁ]')),
                  ],
              ),
              const SizedBox(height: 10),
              if (selectedStations.isNotEmpty) 
                ...selectedStations.map((station) => 
                  IntrinsicWidth(
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 247, 247, 247),
                        borderRadius: BorderRadius.circular(100),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 3,
                            blurRadius: 4,
                          ),
                        ],
                      ),
                      child: ListTile(
                        title: Text(
                          station,
                          textAlign: TextAlign.center,
                          style: const TextStyle(color: Color.fromARGB(255, 88, 87, 91)),
                        ),
                        onTap: () {
                          setState(() {
                            selectedStations.remove(station); 
                          });
                        },
                      ),
                    ),
                  ),
                ),
              if (selectedStations.isEmpty)
                ListTile(
                  title: const Text(
                    "Выберите станцию метро",
                    style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 88, 87, 91)),
                  ),
                  leading: const Icon(Icons.control_point, size: 16),
                  onTap: () async {
                    final station = await Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Metro()),
                    );
                    if (station != null && !selectedStations.contains(station)) {
                      setState(() {
                        selectedStations.add(station);
                      });
                    }
                  },
                ),
              const SizedBox(height: 20),
              const Text('Гражданство', 
              style: TextStyle(fontSize: 16, 
              color: Color.fromARGB(255, 88, 87, 91)
              )
              ),
              const SizedBox(height: 5),
              if (selectedNationalities.isNotEmpty)
              ...selectedNationalities.map((nationality) => 
                IntrinsicWidth(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 247, 247, 247),
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 3,
                          blurRadius: 4,
                        ),
                      ],
                    ),
                    child: ListTile(
                      title: Text(
                        nationality,
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: Color.fromARGB(255, 88, 87, 91)),
                      ),
                      onTap: () {
                        setState(() {
                          selectedNationalities.remove(nationality); 
                        });
                      },
                    ),
                  ),
                ),
              ),
            if (selectedNationalities.isEmpty)
              ListTile(
                title: const Text(
                  "Добавить гражданство",
                  style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 88, 87, 91)),
                ),
                leading: const Icon(Icons.control_point, size: 16),
                onTap: () async {
                  final nationality = await Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Nationality()),
                  );
                  if (nationality != null && !selectedNationalities.contains(nationality)) {
                    setState(() {
                      selectedNationalities.add(nationality);
                    });
                  }
                },
              ),
               const SizedBox(height: 5),
              const Divider(
                color: Color.fromARGB(255, 88, 87, 91),
                height: 5,
                thickness: 1,
              ),
              const SizedBox(height: 20),
              Center(
                child: SizedBox(
                  width: 250,
                  height: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {
                      String stationsString = selectedStations.join(', ');
                      String nationalityString = selectedNationalities.join(', ');
                      UserData userData = UserData(
                        lastName: _lastNameController.text,
                        firstName: _firstNameController.text,
                        middleName: _middleNameController.text,
                        gender: _selectedValue,
                        birthDate: _birthDateController.text,
                        email: _emailController.text,
                        phone: _phoneController.text,
                        city: _cityController.text,
                        metroStations: stationsString,
                        nationality: nationalityString,
                      );
                      Navigator.pop(context, userData);
                    },
                    child: const Text(
                      'Сохранить',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}