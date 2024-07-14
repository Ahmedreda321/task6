import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';

part 'eye_state.dart';

class EyeCubit extends Cubit<EyeState> {
  EyeCubit() : super(IsVisible());
  bool isVisible = true;
  IconData iconn= Icons.visibility;
  void visibel(){
    isVisible=!isVisible;
    emit(IsVisible());
  }

}
