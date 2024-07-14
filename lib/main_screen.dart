import 'package:flutter/material.dart';
import 'package:flutter_application_state_management/fast_filter_bar..dart';


class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  
  String selectedFilter = "";
  List<String> filters = ["قيد التنفيذ","الملغية", "المكتملة", "تحت المراجعة", "تمت"];
  List<Map<String, String>> items = [
    {"title": "", "category": "تمت"},
    {"title": "", "category": "تحت المراجعة"},
    {"title": "", "category": "المكتملة"},
    {"title": "", "category": "الملغية"},
     {"title": "", "category": "قيد التنفيذ"},
  ];

  List<Map<String, String>> get filteredItems {
    if (selectedFilter == "") {
      return items;
    } else {
      return items.where((item) => item["category"] == selectedFilter).toList();
    }
  }

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title: Text('Fast Filter Bar'), backgroundColor: Colors.white,
      ),
      body:Column(
        children: [
          FastFilterBar(
            filters: filters,
            onFilterSelected: (filter) {
              setState(() {
                selectedFilter = filter;
              });
            },
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(filteredItems[index]["title"]!),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
