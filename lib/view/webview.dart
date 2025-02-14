import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsDetailScreen extends StatefulWidget {
  final String url;

  const NewsDetailScreen({super.key, required this.url});

  @override
  _NewsDetailScreenState createState() => _NewsDetailScreenState();
}

class _NewsDetailScreenState extends State<NewsDetailScreen> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(widget.url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Full Article"),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () => controller.reload(),
          ),
        ],
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
