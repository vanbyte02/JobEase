import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:jobease/Employee/Communication/Communication.dart';
import 'package:jobease/Employee/Profile/Account.dart';
import 'package:jobease/Employee/Vacancy/Saved.dart';
import 'package:jobease/Employee/Vacancy/Vacancy.dart';


List<String> savedVacancies = [];


Future<List<dynamic>> getVacancies() async {
  try {
    var response = await http.get(Uri.https("api.hh.ru", "vacancies", {"area": "1"})); 
    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      return jsonData['items'];
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (error) {
    throw Exception('Error: $error');
  }
}

// Экран с поиском вакансий
class SearchVacancy extends StatefulWidget {
  const SearchVacancy({super.key});

  @override
  _SearchVacancyState createState() => _SearchVacancyState();
}

class _SearchVacancyState extends State<SearchVacancy> {
  List<dynamic>? vacancies;
  List<dynamic>? filteredVacancies;
  bool isLoading = false;
  String errorMessage = '';
  final TextEditingController searchController = TextEditingController();

  Future<void> _fetchVacancies() async {
    setState(() {
      isLoading = true;
      errorMessage = '';
    });

    try {
      var vacs = await getVacancies();
      setState(() {
        vacancies = vacs;
        filteredVacancies = vacs; 
        isLoading = false;
      });
    } catch (error) {
      setState(() {
        errorMessage = error.toString();
        isLoading = false;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchVacancies(); 
    searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    searchController.removeListener(_onSearchChanged);
    searchController.dispose();
    super.dispose();
  }


  void _onSearchChanged() {
    String searchText = searchController.text.toLowerCase();
    setState(() {
      filteredVacancies = vacancies?.where((vacancy) {
        final vacancyName = vacancy['name']?.toLowerCase() ?? '';
        return vacancyName.contains(searchText);
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 242, 242),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 247, 247, 247),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 3,
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Center(
                    child: TextField(
                      controller: searchController,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Поиск...',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            const Text(
              'Вакансии на основе вашего резюме',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 91, 90, 94),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            if (isLoading)
              const CircularProgressIndicator(),
            if (errorMessage.isNotEmpty)
              Text('Ошибка: $errorMessage'),
            if (filteredVacancies != null && !isLoading)
              Expanded(
                child: ListView.separated(
                  padding: const EdgeInsets.all(10),
                  itemCount: filteredVacancies!.length,
                  itemBuilder: (BuildContext context, int index) {
                  var vacancy = filteredVacancies![index];
                  String name = vacancy['name'] ?? '';
                  String salary = vacancy['salary']?['from']?.toString() ?? '';
                  String metro = vacancy['address']?['metro']?['station_name'] ?? 'Метро не указано';
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Vacancy(vacancy: vacancy), 
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 247, 247, 247),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 3,
                            blurRadius: 4,
                          ),
                        ],
                      ),
                      width: 340,
                      height: 250,
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(height: 25),
                              Center(
                                child: ConstrainedBox(
                                  constraints: const BoxConstraints(
                                    maxWidth: 290
                                  ),
                                  child: Text(
                                    name,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 19,
                                      color: Color.fromARGB(255, 91, 90, 94),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Text(
                                      salary.isNotEmpty ? '$salary руб.' : 'Зарплата не указана',
                                      style: const TextStyle(
                                        fontSize: 16,
                                        color: Color.fromARGB(255, 91, 90, 94),
                                      ),
                                    ),
                                  Text(
                                    'Москва, $metro',
                                    style: const TextStyle(
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 91, 90, 94),
                                    ),
                                  ),
                                ],
                              )
                                ],
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              child: SizedBox(
                                width: 300,
                                height: 30,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(255, 74, 187, 80),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                  child: const Text(
                                    'Отозваться',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                  onPressed: () {
                                  },
                                ),
                              ),
                            ),
                          ),
                        Align(
                            alignment: Alignment.topRight,
                            child: IconButton(
                              icon: Icon(
                                savedVacancies.contains(name) ? Icons.turned_in : Icons.turned_in_not,
                              ),
                              onPressed: () {
                                setState(() {
                                  if (savedVacancies.contains(name)) {
                                    savedVacancies.remove(name);
                                  } else {
                                    savedVacancies.add(name);
                                  }
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(height: 20),
                ),
              ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 242, 242, 242),
        child: Container(
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Colors.grey,
                width: 1,
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: const Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 24,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.turned_in_not,
                  color: Colors.black,
                  size: 24,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Saved(savedVacancies: savedVacancies), 
                    ),
                  );
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.question_answer,
                  color: Colors.black,
                  size: 24,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Communication(),
                    ),
                  );
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.person,
                  color: Colors.black,
                  size: 24,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Account(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
