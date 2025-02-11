import 'package:flutter/material.dart';
import 'package:gitnewsapp/models/article-model.dart';
import 'package:gitnewsapp/services/news-service.dart';
import 'package:gitnewsapp/widgets/news-listview.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key,
  });

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
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
        : NewsListView(article: article);
  }
}
