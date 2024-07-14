import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'fast_filter_bar_state.dart';

class FastFilterBarCubit extends Cubit<FastFilterBarState> {
  FastFilterBarCubit() : super(selectIt());
  int chooes = 0;
  Color colorr = Colors.black12;

  void takeIt(int index) {
    chooes = index;

    emit(selectIt());
  }

  Color? x(int index) {
    if (chooes == index) {
      return Colors.red;
    } else {
      return Colors.black12;
    }
    emit(ColorIt());
  }
}
