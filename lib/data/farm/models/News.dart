import 'dart:convert';

import 'package:intl/intl.dart';

class NewsApiResonse {
  late String status;
  late int totalResults;
  late List<Article> articles;

  NewsApiResonse({
    status,
    totalResults,
    articles,
  });

  factory NewsApiResonse.fromRawJson(String str) =>
      NewsApiResonse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NewsApiResonse.fromJson(Map<String, dynamic> json) => NewsApiResonse(
        status: json["status"],
        totalResults: json["totalResults"],
        articles: json["articles"] == null
            ? null
            : List<Article>.from(
                json["articles"].map((x) => Article.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "totalResults": totalResults,
        "articles": articles,
      };
}

class Article {
  late Source source;
  late String author;
  String title;
  String description;
  String url;
  String urlToImage;
  DateTime publishedAt;
  String content;

  Article({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  factory Article.fromRawJson(String str) => Article.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Article.fromJson(Map<String, dynamic> json) => Article(
        source: json["source"],
        author: json["author"],
        title: json["title"],
        description: json["description"],
        url: json["url"],
        urlToImage: json["urlToImage"],
        publishedAt: json["publishedAt"],
        content: json["content"],
      );

  Map<String, dynamic> toJson() => {
        "source": source,
        "author": author,
        "title": title,
        "description": description,
        "url": url,
        "urlToImage": urlToImage,
        "publishedAt": publishedAt,
        "content": content,
      };
  String getTime() {
    var formatter = DateFormat('dd MMMM yyyy h:m');
    String formatted = formatter.format(publishedAt);
    return formatted;
  }

  String getDateOnly() {
    var formatter = DateFormat('dd MMMM yyyy');
    String formatted = formatter.format(publishedAt);
    return formatted;
  }
}

class Source {
  String id;
  String name;

  Source({
    required this.id,
    required this.name,
  });

  factory Source.fromRawJson(String str) => Source.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Source.fromJson(Map<String, dynamic> json) => Source(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
