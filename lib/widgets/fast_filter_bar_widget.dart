import 'package:flutter/material.dart';
import 'package:task2/models/fast_filter_bar_model.dart';

class FastFilterBarWidget extends StatelessWidget {
  final FastFilterBarModel fastFilterBarModel;
  const FastFilterBarWidget({super.key, required this.fastFilterBarModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //print(fastFilterBarModel.title);
      },
      child: Container(
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(25),
        ),
        height: 10,
        width: 120,
        child: Center(
            child: Text(
          fastFilterBarModel.title,
          style: const TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
