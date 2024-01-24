import 'package:flutter/material.dart';

class MainTextFormField extends StatelessWidget {
  final TextEditingController controller ;
  final String text;
  const MainTextFormField({super.key , required this.controller , required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: const Offset(0, 1.2),
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
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
                  ),
                );
  }
}