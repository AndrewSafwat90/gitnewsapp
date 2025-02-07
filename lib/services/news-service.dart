import 'package:dio/dio.dart';

final dio = Dio();

gitNews() async {
  Response response = await dio.get(
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=6459ba74328d41cdaa8acfdacd45826c');
  Map<String, dynamic> jsonData = response.data;
  List<dynamic> articles = jsonData['articles'];

  for (var article in articles) {
    print(article['author']);
  }
}
