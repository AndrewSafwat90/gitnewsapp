import 'package:flutter/material.dart';

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
    ));
  }
}
