import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dictionary_app/word_model.dart';
import 'package:firebase_core/firebase_core.dart';

class DbService {
  final _db = FirebaseFirestore.instance;

  //get wordmodel
  Future<List<WordModel>> getWordModel(String leng) async {
    return _db.collection('data_$leng').get().then((value) {
      final List<WordModel> result = [];
      for (var element in value.docs) {
        result.add(WordModel.fromJson(element.data()));
      }
      return result;
    }, onError: (e) {
      return [];
    });
  }
}
