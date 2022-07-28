import 'package:flutter/material.dart';
import 'package:flutter_news_api/widgets/newsCard.dart';

import '../Model/artical.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key, required this.article}) : super(key: key);
  final Article article;

  @override
  Widget build(BuildContext context) {
    return Center(child: Container(margin:EdgeInsets.all(20),child: NewsCard(article: article)));
  }
}
