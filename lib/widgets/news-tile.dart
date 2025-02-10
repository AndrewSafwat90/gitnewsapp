import 'package:flutter/material.dart';
import 'package:gitnewsapp/models/article-model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});
  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: articleModel.image != null
              ? Image.network(
                  articleModel.image!,
                  errorBuilder: (context, error, stackTrace) {
                    return Image.network(
                        'https://wallpapers.com/images/high/breaking-news-background-1500-x-946-ptptftteduff9krr.webp');
                  },
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                )
              : Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.grey,
                  child: Center(child: Text('Loading image failed')),
                ),
        ),
        Text(
          articleModel.title, // Fixed incorrect ordering
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 8),
        Text(
          articleModel.subtitle != null ? articleModel.subtitle! : "",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 15,
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
