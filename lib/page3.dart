import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40, left: 20, right: 20),
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: Icon(
              CupertinoIcons.search,
              color: Colors.black,
            ),
            filled: true,
            fillColor: Colors.white),
      ),
    );
  }
}