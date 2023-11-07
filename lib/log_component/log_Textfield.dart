import 'package:flutter/material.dart';

class LogTextField extends StatefulWidget {
  final String hintText;
  final bool secretText;

  const LogTextField({Key? key, required this.hintText, required this.secretText}) : super(key: key);

  @override
  State<LogTextField> createState() => _LogTextFieldState();
}

class _LogTextFieldState extends State<LogTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        obscureText: widget.secretText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          fillColor: Colors.grey[300],
          filled: true,
          hintText: widget.hintText
        ),
      ),
    );
  }
}