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
        ArticleModel articleModel = ArticleModel(
          image: article['urlToImage'],
          title: article['title'],
          subtitle: article['description'],
        );

        articleList.add(articleModel);
      }
      return articleList;
    } catch (e) {
      // TODO
      return [];
    }
  }
}
