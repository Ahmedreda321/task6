import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task6/task1/Using_cubit.dart';
import 'package:task6/task1/Using_setstate.dart';
import 'package:task6/task1/cubit/fast_filter_bar_cubit.dart';
import 'package:task6/task2/Cubit2/eye_cubit.dart';
import 'package:task6/task2/EyeUsingCubit.dart';
import 'package:task6/task2/EyeUsingSetState.dart';
import 'package:task6/task3/cubit/radio_cubit.dart';
import 'package:task6/task3/radio.dart';
import 'package:task6/task3/radioCubit.dart';
import 'package:task6/task4/Cubit/showCubit.dart';
import 'package:task6/task4/Cubit/show_cubit.dart';
import 'package:task6/task4/showImage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: BlocProvider(
      //     create: (context) => FastFilterBarCubit(),
      //     child: FastFilterBarCubitt())
      //  home: EyeUsingSetStae());
      // home:BlocProvider(
      // create: (context) =>EyeCubit(),
      // child:EyeUsingCubit()
      //  home: ShowImage(),
      home: BlocProvider(create: (context) => ShowCubitt(), child: ShowCubit()
          // ShowCubit
          ),
      // home: RadioButtonWidget(),
      // home: BlocProvider(
      //     create: (context) => RadioCubit(), child: const radioCubit()
      //     // ShowCubit
      //     ),
    );
  }
}
