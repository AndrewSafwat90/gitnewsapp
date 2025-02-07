import 'package:dio/dio.dart';

final dio = Dio();

gitNews() {
  Response response = dio.get(
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=6459ba74328d41cdaa8acfdacd45826c');
  print(response);
}
