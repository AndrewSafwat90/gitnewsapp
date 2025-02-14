import 'package:flutter/material.dart';
import 'package:gitnewsapp/widgets/newsListviewBuilder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          NewsListViewBuilder(),
        ],
      ),
    );
  }
}
