import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
 const Page2({super.key});

 @override
 State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
 @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Search', style: TextStyle(color: Colors.blue)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Page 2'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Search', style: TextStyle(color: Colors.blue)),
          ),
        ],
      ),
    );
 }
}