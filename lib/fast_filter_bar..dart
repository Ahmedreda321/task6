import 'package:flutter/material.dart';

class FastFilterBar extends StatefulWidget {
  final List<String> filters;
  final Function(String) onFilterSelected;

  FastFilterBar({
    required this.filters,
    required this.onFilterSelected,
  });

  @override
  _FastFilterBarState createState() => _FastFilterBarState();
}

class _FastFilterBarState extends State<FastFilterBar> {
  String? _selectedFilter;
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: widget.filters.map((filter) {
          bool isSelected = _selectedFilter == filter;
          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedFilter = filter;
              });
              widget.onFilterSelected(filter);
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              margin: EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                color: isSelected ? Colors.red : Color.fromARGB(255, 164, 159, 159),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black),
              ),
              child: Text(
                filter,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
