import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'db_service.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  List<String> languages = ['English', 'Indonesia'];
  String selectedLanguage = 'English';
  String textInput = '';
  String translatedText = '';

  void _handleTranslateButtonPressed() {
    // Isi kode Anda untuk menerjemahkan teks
    // ...

    setState(() {
      translatedText = 'Translated text here';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Translate'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                setState(() {
                  textInput = value;
                });
              },
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  CupertinoIcons.search,
                  color: Colors.black,
                ),
                hintText: 'Enter text to translate',
              ),
            ),
            DropdownButton<String>(
              value: selectedLanguage,
              onChanged: (String? newValue) {
                setState(() {
                  selectedLanguage = newValue!;
                });
              },
              items: languages.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            ElevatedButton(
              onPressed: _handleTranslateButtonPressed,
              child: const Text('Translate'),
            ),
            if (translatedText.isNotEmpty)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(translatedText),
              ),
          ],
        ),
      ),
    );
  }
}
