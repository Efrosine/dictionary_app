import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dictionary_app/word_model.dart';
import 'package:dio/dio.dart';

class DbService {
  final db = FirebaseFirestore.instance;
  final dio = Dio();
  Future<void> add({required String id, leng, required Map<String, dynamic> json}) async {
    db.collection('data_$leng').doc(id).set(json);
  }

  Future<void> get(String word) async {
    final response =
        await dio.get('https://twinword-word-graph-dictionary.p.rapidapi.com/definition/',
            queryParameters: {'entry': word},
            options: Options(
              headers: {
                'X-RapidAPI-Key': 'd4550ae05dmsha8b619e154a6259p1d3900jsn4eed5ceee572',
                'X-RapidAPI-Host': 'twinword-word-graph-dictionary.p.rapidapi.com'
              },
            ));

    //Print data name meaning
    var mod = WordModel.fromJson(response.data);
    add(id: mod.word, leng: 'en', json: mod.toJson());
    var map = await mod.toJsonTrans();
    map.forEach((key, value) {
      print(value);
    });
    add(id: map['word'], leng: 'id', json: map);
  }

  Future<String> trans(String word, source, target) async {
    final response = await dio.post(
        'https://google-translate113.p.rapidapi.com/api/v1/translator/text',
        data: {'text': word, 'to': target, 'from': source},
        options: Options(
          headers: {
            'X-RapidAPI-Key': '2e7aa97237msh89ce8f771546c47p1fe7acjsn105dde33f0df',
            'X-RapidAPI-Host': 'google-translate113.p.rapidapi.com'
          },
        ));
    return response.data!;
  }
}
