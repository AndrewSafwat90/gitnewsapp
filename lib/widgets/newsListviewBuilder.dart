import 'package:flutter/material.dart';
import 'package:gitnewsapp/models/article-model.dart';
import 'package:gitnewsapp/services/news-service.dart';
import 'package:gitnewsapp/widgets/news-listview.dart';

class NewsListViewBuilder extends StatefulWidget {
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  //final String category;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsService().gitTopHeadLines(category: 'general');
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(article: snapshot.data ?? []);
        } else if (snapshot.hasError) {
          return SliverFillRemaining(
            child: Text('Failed loading Data'),
          );
        } else {
          return SliverFillRemaining(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
