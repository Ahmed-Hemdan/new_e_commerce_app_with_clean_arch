import 'package:flutter/material.dart';

class MainTextFormField extends StatelessWidget {
  final TextEditingController controller ;
  final String text;
  const MainTextFormField({super.key , required this.controller , required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: TextFormField(
        controller: controller,
        validator: (value) =>
            value!.isEmpty ? "Please enter your $text" : null,
        decoration:  InputDecoration(
          label: Text(
            text,
            style: const TextStyle(color: Colors.grey),
          ),
          hintText: "Enter you $text",
        ),
      ),
    );
  }
}