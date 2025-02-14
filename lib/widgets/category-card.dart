import 'package:flutter/material.dart';
import 'package:gitnewsapp/models/category-model.dart';
import 'package:gitnewsapp/view/category-view.dart';

class CategoryCard extends StatelessWidget {
  CategoryCard({
    super.key,
    required this.category,
  });
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return CategoryView();
        }));
      },
      child: Container(
        margin: EdgeInsets.only(right: 10),
        height: 100,
        width: 150,
        child: Center(
            child: Text(
          category.categoryName,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 19,
          ),
        )),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: AssetImage(category.url),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
