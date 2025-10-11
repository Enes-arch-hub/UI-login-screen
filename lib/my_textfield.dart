import 'package:flutter/material.dart';
class MyTextfield extends StatelessWidget{
  final controller;
  final String hintText;
  final bool obscureText;

  const MyTextfield({
    super.key,
  required this.controller,
  required this.hintText,
  required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue)
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          fillColor: Colors.red,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.yellow),
        ),
      ),
    );
  }
}