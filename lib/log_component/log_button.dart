import 'package:dictionary_app/Home_page.dart';
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
      padding: EdgeInsets.all(15.0),
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
          child: const Text(
            "Sign in",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16
            ),
          ),
        ),
      ),
    );
 }
}