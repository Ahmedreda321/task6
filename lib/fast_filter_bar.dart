// lib/fast_filter_bar.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task2/models/fast_filter_bar_model.dart';

// Cubit to manage selected item state
class FilterCubit extends Cubit<int> {
  FilterCubit() : super(0);

  void selectItem(int index) {
    emit(index);
  }
}

class FastFilterBar extends StatelessWidget {
  const FastFilterBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FilterCubit(),
      child: BlocBuilder<FilterCubit, int>(
        builder: (context, selectedIndex) {
          return SizedBox(
            height: 50,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: fastFilterBarList.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    context.read<FilterCubit>().selectItem(index);
                  },
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: selectedIndex == index ? Colors.red : Colors.grey,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(8.0),
                    child: Text(fastFilterBarList[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
