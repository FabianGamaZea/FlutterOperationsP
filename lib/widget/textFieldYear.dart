import 'package:flutter/material.dart';

class TextFieldYear extends StatelessWidget {

  final TextEditingController controller;
  const TextFieldYear({super.key , required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
              controller: controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(90.0),
                      ),
                      labelText: 'Año',
                    ),
            );
  }
}