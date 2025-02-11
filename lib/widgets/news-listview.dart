import 'package:flutter/material.dart';
import 'package:gitnewsapp/models/article-model.dart';

import 'package:gitnewsapp/widgets/news-tile.dart';

class NewsListView extends StatelessWidget {
  NewsListView({super.key, required this.article});
  final List<ArticleModel> article;

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: article.length,
            (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: NewsTile(articleModel: article[index]),
      );
    }));
  }
}
