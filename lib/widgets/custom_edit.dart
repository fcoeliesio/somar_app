import 'package:flutter/material.dart';

class CustomEdit extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData icon;
  final bool isPassword;
  final String password;

  const CustomEdit({
    super.key, 
    required this.controller,
    required this.hintText,
    required this.icon,
    this.isPassword = false,
    this.password = '',
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
            controller: controller,
            obscureText: isPassword,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: const TextStyle(
                color: Colors.grey, 
                fontStyle: FontStyle.italic,
              ),
              prefixIcon: Icon(icon),
              border: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.blue,
              ),
              borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(),
            ),
          );
  }
}