import 'dart:convert';

import 'package:flutter_news_api/Model/artical.dart';
import 'package:http/http.dart';

class ApiService{
  final endpoint = "https://newsapi.org/v2/everything?q=tesla&from=2022-06-27&sortBy=publishedAt&apiKey=933a89749f0e4744ba243de0012d6f36";

  Future<List<Article>> getArtical() async{
    Response response = await get(Uri.parse(endpoint));
    if(response.statusCode == 200){
      Map<String, dynamic> json = jsonDecode(response.body);
      List<dynamic> body = json['articles'];
      List<Article> articles = body.map((dynamic item) => Article.fromJson(item)).toList();
      return articles;
    }else{
      throw ('Data has error');
    }
  }
}

