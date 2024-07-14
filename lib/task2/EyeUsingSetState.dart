import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '_PassWordTextFieldState.dart';

class EyeUsingSetStae extends StatefulWidget {
  const EyeUsingSetStae({super.key});

  @override
  State<EyeUsingSetStae> createState() => _EyeUsingSetStaeState();
}

class _EyeUsingSetStaeState extends State<EyeUsingSetStae> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 100,
          ),
          PassWordTextField(),
        ],
      ),
    );
  }
}
