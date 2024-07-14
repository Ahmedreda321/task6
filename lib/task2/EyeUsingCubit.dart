import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Cubit2/eye_cubit.dart';

// ignore: must_be_immutable
class EyeUsingCubit extends StatelessWidget {
  EyeUsingCubit({super.key});
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    EyeCubit cubit = context.read<EyeCubit>();

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<EyeCubit, EyeState>(builder: (context, state) {
            return Center(
              child: TextField(
                obscureText: cubit.isVisible,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                    suffixIcon: InkWell(
                        onTap: () {
                          cubit.visibel();
                        },
                        child: Icon(cubit.isVisible
                            ? Icons.visibility
                            : Icons.visibility_off)),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(22))),
              ),
            );
          }),
        ],
      ),
    );
  }
}
