import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

//Выбор станции метро

Future<List<dynamic>> getMetroStations() async {
  try {
    var response = await http.get(Uri.https("api.hh.ru", "metro/1"));
    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      return jsonData['lines']
          .expand((line) => (line['stations'] as List<dynamic>).map((station) {
                return station;
              }))
          .toList(); 
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (error) {
    throw Exception('Error: $error');
  }
}
  

class Metro extends StatefulWidget {
  @override
  _MetroState createState() => _MetroState();
}

class _MetroState extends State<Metro> {
  List<dynamic>? metroStations;
  List<dynamic>? filteredStations;
  bool isLoading = false;
  String errorMessage = '';
  String searchQuery = '';

  Future<void> _fetchMetroStations() async {
    setState(() {
      isLoading = true;
      errorMessage = '';
    });

    try {
      var stations = await getMetroStations();
      setState(() {
        metroStations = stations;
        filteredStations = stations;
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
    _fetchMetroStations(); 
  }

  
  void _filterStations(String query) {
    setState(() {
      searchQuery = query;
      if (searchQuery.isEmpty) {
        filteredStations = metroStations; 
      } else {
        filteredStations = metroStations?.where((station) {
          String stationName = station['name'].toLowerCase();
          return stationName.contains(searchQuery.toLowerCase());
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
                      icon: const Icon(
                      Icons.arrow_back_ios, 
                      size: 20
                     ),
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
                    onChanged: _filterStations,
                    decoration: const InputDecoration(
                      contentPadding:
                           EdgeInsets.symmetric(
                            vertical: 6, 
                           horizontal: 10),
                      prefixIcon:  Icon(
                        Icons.search
                      ),
                      hintText: 'Поиск...',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              ]
            ),
            const SizedBox(height: 20),
            if (isLoading) const CircularProgressIndicator(),
            if (errorMessage.isNotEmpty) Text('Ошибка: $errorMessage'),
            if (filteredStations != null && !isLoading) ...[
              const SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  itemCount: filteredStations!.length,
                  itemBuilder: (context, index) {
                    var station = filteredStations![index];
                    return ListTile(
                      title: Text(station['name']),
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