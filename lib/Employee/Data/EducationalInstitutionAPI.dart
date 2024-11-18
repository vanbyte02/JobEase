import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


Future<List<dynamic>> getEducationalInstitutions() async {
  try {
    var response = await http.get(Uri.https("api.hh.ru", "educational_institutions"));
    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      return jsonData['items'] ?? [];
    } else {
      throw Exception('Не удалось загрузить данные: ${response.statusCode}');
    }
  } catch (error) {
    throw Exception('Ошибка при загрузке данных: $error');
  }
}

//Экран выбора учебного заведения
class EducationalInstitutions extends StatefulWidget {
  @override
  _EducationalInstitutionsState createState() => _EducationalInstitutionsState();
}

class _EducationalInstitutionsState extends State<EducationalInstitutions> {
  List<dynamic>? institutions;
  List<dynamic>? filteredInstitutions;
  bool isLoading = true;
  String errorMessage = '';
  String searchQuery = '';

  Future<void> _fetchInstitutions() async {
    setState(() {
      isLoading = true;
      errorMessage = '';
    });

    try {
      var institutionsData = await getEducationalInstitutions();
      setState(() {
        institutions = institutionsData;
        filteredInstitutions = institutionsData;
        isLoading = false;
      });
    } catch (error) {
      setState(() {
        errorMessage = error.toString();
        isLoading = false;
      });
    }
  }

  void _filterInstitutions(String query) {
    setState(() {
      searchQuery = query;
      if (searchQuery.isEmpty) {
        filteredInstitutions = institutions;
      } else {
        filteredInstitutions = institutions?.where((institution) {
          String institutionName = institution['name'].toLowerCase();
          return institutionName.contains(searchQuery.toLowerCase());
        }).toList();
      }
    });
  }

  void _selectInstitution(String institutionName) {
    Navigator.pop(context, institutionName);
  }

  @override
  void initState() {
    super.initState();
    _fetchInstitutions();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Учебные заведения"),
        backgroundColor: const Color.fromARGB(255, 242, 242, 242),
      ),
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
                  child: TextField(
                    onChanged: _filterInstitutions,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Поиск...',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            if (isLoading) const CircularProgressIndicator(),
            if (errorMessage.isNotEmpty) Text('Ошибка: $errorMessage'),
            if (filteredInstitutions != null && !isLoading) ...[
              const SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  itemCount: filteredInstitutions!.length,
                  itemBuilder: (context, index) {
                    var institution = filteredInstitutions![index];
                    return ListTile(
                      title: Text(institution['name']),
                      onTap: () => _selectInstitution(institution['name']),
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
