import 'package:flutter/material.dart';
import 'package:gitnewsapp/models/article-model.dart';
import 'package:gitnewsapp/services/news-service.dart';
import 'package:gitnewsapp/widgets/news-tile.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({
    super.key,
  });

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  bool isLoading = true;
  List<ArticleModel> article = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    article = await NewsService().gitNews();
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? SliverFillRemaining(
            child: Center(child: CircularProgressIndicator()),
          )
        : SliverList(
            delegate: SliverChildBuilderDelegate(childCount: article.length,
                (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: NewsTile(articleModel: article[index]),
            );
          }));
  }
}
