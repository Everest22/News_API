class Article{
  String? title;
  String? description;
  String? urlToImage;
  String? author;

  Article({
    this.title,
    this.description,
    this.urlToImage,
    this.author,
});

  factory Article.fromJson(Map<String, dynamic> json){
    return Article(
      title: json["title"]  == null ? null : json["title"],
      // title: json["title"] == null ? null : json["title"],
      description: json["description"]  == null ? null : json["description"],
      //description: json["description"] == null ? null : json["description"],
      urlToImage: json["urlToImage"] == null ? null : json["urlToImage"],
      author: json["author"] == null ? null : json["author"],
    );
  }
}