import 'package:flutter/material.dart';

import 'package:gitnewsapp/widgets/categories-listview.dart';
import 'package:gitnewsapp/widgets/newsListviewBuilder.dart';

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
            NewsListViewBuilder(category: 'general')
          ],
        ),
      ),
    );
  }
}
