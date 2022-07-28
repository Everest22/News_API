import 'package:flutter/material.dart';
import 'package:flutter_news_api/Model/artical.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({Key? key, required this.article}) : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ClipRRect(
          borderRadius: BorderRadius.circular(10),
            child: Image.network("${article.urlToImage}"),
        ),
          SizedBox(height: 10,),
          Text("${article.title}",style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),),
          SizedBox(height: 10,),
          Text("${article.description}")
        ],
      ),
    );
  }
}
