import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

//Выбор специальности
Future<List<dynamic>> getSpecializations() async {
  try {
    var response = await http.get(Uri.https("api.hh.ru", "specializations"));
    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      List<dynamic> specializations = [];
      for (var category in jsonData) {
        for (var specialization in category['specializations']) {
          specializations.add(specialization);
        }
      }
      return specializations;
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (error) {
    throw Exception('Error: $error');
  }
}

class Specializations extends StatefulWidget {
  @override
  _SpecializationsState createState() => _SpecializationsState();
}

class _SpecializationsState extends State<Specializations> {
  List<dynamic>? specializations;
  List<dynamic>? filteredSpecializations;
  bool isLoading = false;
  String errorMessage = '';
  String searchQuery = '';

  Future<void> _fetchSpecializations() async {
    setState(() {
      isLoading = true;
      errorMessage = '';
    });

    try {
      var specs = await getSpecializations();
      setState(() {
        specializations = specs;
        filteredSpecializations = specs;
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
    _fetchSpecializations();
  }

  void _filterSpecializations(String query) {
    setState(() {
      searchQuery = query;
      if (searchQuery.isEmpty) {
        filteredSpecializations = specializations;
      } else {
        filteredSpecializations = specializations?.where((spec) {
          String specName = spec['name'].toLowerCase();
          return specName.contains(searchQuery.toLowerCase());
        }).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              children: [
                const SizedBox(width: 10),
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios, size: 20),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(width: 20),
                Container(
                  width: 260,
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
                      onChanged: _filterSpecializations,
                      decoration: const InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Поиск...',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            if (isLoading) const CircularProgressIndicator(),
            if (errorMessage.isNotEmpty) Text('Ошибка: $errorMessage'),
            if (filteredSpecializations != null && !isLoading) ...[
              const SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  itemCount: filteredSpecializations!.length,
                  itemBuilder: (context, index) {
                    var specialization = filteredSpecializations![index];
                    return ListTile(
                      title: Text(specialization['name']),
                    );
                  },
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
