import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          height: 50,
          width: 50,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            color: Colors.white,
          ),
          child: const Icon(
            Icons.arrow_back_outlined,
          ),
        ),
      ),
    );
  }
}
