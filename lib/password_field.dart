// lib/password_field.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Cubit to manage password visibility state
class PasswordVisibilityCubit extends Cubit<bool> {
  PasswordVisibilityCubit() : super(false);

  void toggleVisibility() => emit(!state);
}

class PasswordFieldCubit extends StatelessWidget {
  const PasswordFieldCubit({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PasswordVisibilityCubit(),
      child: BlocBuilder<PasswordVisibilityCubit, bool>(
        builder: (context, isPasswordVisible) {
          return TextField(
            obscureText: !isPasswordVisible,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                icon: Icon(
                  isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: () {
                  context.read<PasswordVisibilityCubit>().toggleVisibility();
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
