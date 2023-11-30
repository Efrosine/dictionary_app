import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'add_fata.dart';
import 'translate_service.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  final trans = TranslateService();
  final controller = TextEditingController();
  List<String> languages = ['Eng -> Ind', 'Ind -> Eng'];
  String selectedLanguage = 'Eng -> Ind';
  String from = 'en';
  String to = 'id';
  String translated = '';

  void getTranlate() async {
    translated = await trans.trans(controller.text, from, to);
    setState(() {
      print('translated = $translated');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Translate',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 8),
            TextField(
              controller: controller,
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
                  if (selectedLanguage == 'Eng -> Ind') {
                    from = 'en';
                    to = 'id';
                  } else {
                    from = 'id';
                    to = 'en';
                  }
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
              onPressed: () {
                getTranlate();
              },
              child: const Text('Translate'),
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.black)),
                  child: Text(
                    translated,
                    style: TextStyle(fontSize: 18),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
