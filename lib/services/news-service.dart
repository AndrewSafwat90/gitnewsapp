import 'package:dio/dio.dart';
import 'package:gitnewsapp/models/article-model.dart';

class NewsService {
  final dio = Dio();

  Future<List<ArticleModel>> gitTopHeadLines({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=6459ba74328d41cdaa8acfdacd45826c&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articleList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);

// factory constructor create normal constructor
        articleList.add(articleModel);
      }
      return articleList;
    } catch (e) {
      // TODO
      return [];
    }
  }
}
