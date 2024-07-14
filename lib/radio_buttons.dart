// lib/radio_buttons.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Cubit to manage selected radio button state
class RadioCubit extends Cubit<int> {
  RadioCubit() : super(0);

  void selectRadio(int index) {
    emit(index);
  }
}

class RadioButtons extends StatelessWidget {
  const RadioButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RadioCubit(),
      child: BlocBuilder<RadioCubit, int>(
        builder: (context, selectedRadio) {
          return ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return RadioListTile(
                value: index,
                groupValue: selectedRadio,
                onChanged: (value) {
                  context.read<RadioCubit>().selectRadio(value!);
                },
                title: Text('Option ${index + 1}'),
              );
            },
          );
        },
      ),
    );
  }
}
