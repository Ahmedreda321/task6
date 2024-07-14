import 'package:flutter/material.dart';

class PassWordTextField extends StatefulWidget {
  const PassWordTextField({
    super.key,
  });

  @override
  State<PassWordTextField> createState() => _PassWordTextFieldState();
}

class _PassWordTextFieldState extends State<PassWordTextField> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: !isVisible,
      obscuringCharacter: '*',
      decoration: InputDecoration(
          suffixIcon: InkWell(
              onTap: () {
                setState(() {
                  isVisible = !isVisible;
                });
              },
              child: Icon(isVisible ? Icons.visibility : Icons.visibility_off)),
          border: OutlineInputBorder(
              borderSide: const BorderSide(width: 1),
              borderRadius: BorderRadius.circular(22))),
    );
  }
}
