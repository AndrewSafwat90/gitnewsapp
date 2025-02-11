import 'package:flutter/material.dart';
import 'package:gitnewsapp/models/article-model.dart';
import 'package:gitnewsapp/services/news-service.dart';
import 'package:gitnewsapp/widgets/categories-listview.dart';
import 'package:gitnewsapp/widgets/news-listview.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: RichText(
            text: TextSpan(children: [
          TextSpan(
              text: 'News ',
              style: TextStyle(
                fontSize: 24,
                color: Colors.orange,
                fontWeight: FontWeight.bold,
              )),
          TextSpan(
              text: 'Cloud',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic)),
        ])),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: CategoriesListView(),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 8)),
            NewsListViewBuilder()
          ],
        ),
      ),
    );
  }
}

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
