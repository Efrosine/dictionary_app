import 'package:dictionary_app/db_sevice.dart';
import 'package:dictionary_app/strukdat.dart';
import 'package:dictionary_app/word_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  final String word;
  final List<WordModel> data;

  Detail({
    super.key,
    required this.word,
    required this.data,
  });

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  final std = Strukdat();
  late WordModel wm;

  @override
  void initState() {
    print('init');
    std.list = widget.data;
    wm = std.binarySearch(widget.word)!;
    print('init end');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text('Detail'),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        padding: EdgeInsets.fromLTRB(12, 24, 12, 0),
        children: [
          Text(wm.word,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
              textAlign: TextAlign.center),
          SizedBox(height: 16),
          Text('meaning'),
          SizedBox(height: 8),
          _Meaning(tipe: 'verb', wm: wm),
          _Meaning(tipe: 'noun', wm: wm),
          _Meaning(tipe: 'adjective', wm: wm),
          _Meaning(tipe: 'adverb', wm: wm),
        ],
      ),
    );
  }
}

class _Meaning extends StatelessWidget {
  const _Meaning({super.key, required this.tipe, required this.wm});

  final String tipe;
  final WordModel wm;

  @override
  Widget build(BuildContext context) {
    final String cek = wm.meaning[tipe]['0'] ?? 'null';
    if (!(cek.contains('batal') || cek.contains('null'))) {
      return Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(tipe, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              ListView.builder(
                itemCount: wm.meaning[tipe].length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Text('-'),
                    minLeadingWidth: 0,
                    title: Text(wm.meaning[tipe]['$index']),
                  );
                },
              )
            ],
          ),
        ),
      );
    } else {
      return SizedBox();
    }
  }
}
