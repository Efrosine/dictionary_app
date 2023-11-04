import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return 
    Container(
        margin: EdgeInsets.only(top: 40, left: 20, right: 20),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                CupertinoIcons.search,
                color: Colors.black,
              ),
              filled: true,
              fillColor: Colors.white
            ),
          ),
    );
  }
}