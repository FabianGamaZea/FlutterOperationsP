import 'package:flutter/material.dart';

class TextLogin extends StatelessWidget {
  final String labelText;
  final TextInputType textType;
  final TextEditingController controller;

  // Constructor que recibe los parámetros
  TextLogin({required this.labelText, required this.textType , required this.controller});

  @override
  Widget build(BuildContext context) {
    return  TextField(
                    controller: controller,
                    keyboardType: textType,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(90.0),
                      ),
                      labelText: labelText,
                    ),
                    obscureText: textType == TextInputType.visiblePassword,
                  );
  }
}
