import 'package:dio/dio.dart';

class WordModel {
  final String word;
  final Map<String, dynamic> meaning;

  WordModel({required this.word, required this.meaning});

  factory WordModel.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic> meaning = {};
    var temp = json['meaning'] as Map;
    temp.forEach((key, value) {
      switch (key) {
        case 'noun':
          meaning['noun'] = converStringToMap(value, 'nou');
          break;
        case 'verb':
          meaning['verb'] = converStringToMap(value, 'vrb');
          break;
        case 'adjective':
          meaning['adjective'] = converStringToMap(value, 'adj');
          break;
        case 'adverb':
          meaning['adverb'] = converStringToMap(value, 'adv');
          break;
        default:
      }
    });
    return WordModel(
      word: json['entry'],
      meaning: meaning,
    );
  }

  Map<String, dynamic> toJson() => {
        'word': word,
        'meaning': meaning,
      };

  Future<Map<String, dynamic>> toJsonTrans() async {
    print('start');
    var temp = meaning;
    temp.forEach((key, value) {
      var innerTemp = meaning[key] as Map;
      innerTemp.forEach((key, value) async {
        print('from $value');
        innerTemp[key] = await trans(value, 'en', 'id');
        Future.delayed(Duration(seconds: 1));
        print('to ${innerTemp[key]}');
      });
      temp[key] = innerTemp;
    });
    return {
      'word': await trans(word, 'en', 'id'),
      'meaning': meaning,
    };
  }
}

Map<String, dynamic> converStringToMap(String input, type) {
  List<String> lines = input.split('\n');
  Map<String, dynamic> result = {};

  for (int i = 0; i < lines.length; i++) {
    String line = 'null';
    if (lines[i].contains('($type)')) {
      line = lines[i].replaceFirst('($type)', '').trim();
      //print(line);
    }
    result[i.toString()] = line;
  }
  return result;
}

Future<String> trans(String word, source, target) async {
  final dio = Dio();
  final response =
      await dio.post('https://google-translate113.p.rapidapi.com/api/v1/translator/text',
          data: {'text': word, 'to': target, 'from': source},
          options: Options(
            headers: {
              'X-RapidAPI-Key': '2e7aa97237msh89ce8f771546c47p1fe7acjsn105dde33f0df',
              'X-RapidAPI-Host': 'google-translate113.p.rapidapi.com'
            },
          ));
  return response.data!['trans'];
}
