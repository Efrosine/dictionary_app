import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class logButton extends StatefulWidget {
  const logButton({super.key});

  @override
  State<logButton> createState() => _logButtonState();
}

class _logButtonState extends State<logButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25.0),
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Center(
        child: Text(
          "Sign in",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16
          ),
        ),
      ),
    );
  }
}