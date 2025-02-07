import 'package:flutter/material.dart';
import 'package:gitnewsapp/models/category-model.dart';
import 'package:gitnewsapp/widgets/category-card.dart';

class CategoriesListView extends StatelessWidget {
  CategoriesListView({
    super.key,
  });
  final List<CategoryModel> categories = [
    CategoryModel(categoryName: 'Business', url: 'assets/business.png'),
    CategoryModel(
        categoryName: 'Entertainment', url: 'assets/entertainment.png'),
    CategoryModel(categoryName: 'General', url: 'assets/general.png'),
    CategoryModel(categoryName: 'Health', url: 'assets/health.png'),
    CategoryModel(categoryName: 'Science', url: 'assets/science.png'),
    CategoryModel(categoryName: 'Sports', url: 'assets/sports.png'),
    CategoryModel(categoryName: 'Technology', url: 'assets/technology.png'),
  ];
  @override

  /// Returns a horizontal list of [CategoryCard]s, each showing a
  /// different news category.
  ///
  /// The list is contained within a [SizedBox] with a fixed height of 100,
  /// so that the cards will be evenly spaced within that height.
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryCard(category: categories[index]);
        },
      ),
    );
  }
}
