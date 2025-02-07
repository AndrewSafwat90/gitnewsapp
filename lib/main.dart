import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:gitnewsapp/services/news-service.dart';
import 'package:gitnewsapp/view/home-view.dart';

void main() {
  gitNews();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
