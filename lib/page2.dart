import 'package:flutter/material.dart';

import 'db_service.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  final db = DbService();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
          onPressed: () {
            List<String> result = [
              'Book', // Noun
              'Quickly', // Adverb
              'Radiant', // Adjective
              'Discover', // Verb
              'Guitar', // Noun
              'Silently', // Adverb
              'Spectacular', // Adjective
              'Invent', // Verb
              'Dream', // Noun
              'Joyfully', // Adverb
              'Vibrant', // Adjective
              'Inspire', // Verb
              'Sunset', // Noun
              'Effortlessly', // Adverb
              'Blossom', // Verb
            ];

            result.forEach((element) {
              db.get(element);
              Future.delayed(Duration(milliseconds: 500));
            });

            // db.trans('walk', 'en', 'id');
          },
          child: Text('add')),
    );
  }
}
