import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Page1(),
    );
  }
}

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  List<String> recentWords = [];

  void _handleSubmitted(String text) {
    setState(() {
      recentWords.add(text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40, left: 20, right: 20),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(
                  CupertinoIcons.search,
                  color: Colors.black,
                ),
                filled: true,
                fillColor: Colors.grey[30]),
            onSubmitted: _handleSubmitted,
          ),
          SizedBox(
            height: 30,
          ),
          Text('Recent',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 20,
          ),
          Expanded(
              child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('sdfghj'),
              );
            },
          ))
        ],
      ),
    );
  }
}
