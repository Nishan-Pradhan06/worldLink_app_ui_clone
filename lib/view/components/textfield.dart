import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  const Textfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6.0),
        ),
        child: const TextField(
          obscureText: true,
          decoration: InputDecoration(
            suffixText: 'Show',
            hintText: 'Password',
            border: InputBorder.none,
            hintStyle: TextStyle(
              color: Colors.black38,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
