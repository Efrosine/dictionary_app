import 'package:dio/dio.dart';

class TranslateService {
  final dio = Dio();

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
    return response.data['trans'];
  }
}
