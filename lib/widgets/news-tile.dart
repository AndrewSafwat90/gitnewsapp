import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            'https://wallpapers.com/images/high/breaking-news-background-1500-x-946-ptptftteduff9krr.webp',
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Text(
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          'data/high/breaking-news-background- 1500-x-946- data/high/breaking-news-background- 1500-x-946-data/high/breaking-news-background- 1500-x-946-data/high/breaking-news-background- 1500-x-946-',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 8),
        Text(
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          'data/high/breaking-news-background- 1500-x-946- data/high/breaking-news-background- 1500-x-946-data/high/breaking-news-background- 1500-x-946-data/high/breaking-news-background- 1500-x-946-',
          style: TextStyle(
            fontSize: 15,
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
