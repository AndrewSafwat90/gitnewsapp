class ArticleModel {
  final String? image;
  final String title;
  final String? subtitle;
  final String urllink;

  ArticleModel(
      {required this.urllink,
      this.image,
      required this.title,
      required this.subtitle});

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
        image: json['urlToImage'],
        title: json['title'],
        subtitle: json['description'],
        urllink: json['url']);
  }
}
