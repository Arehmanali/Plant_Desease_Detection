


import 'dart:convert';

import 'package:agri_cure/Models/NewsModel.dart';
import 'package:agri_cure/Utils/Constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class NewsProvider extends ChangeNotifier{

  List<Articles> newsArticlesList = [];

  Future<void> getNewsFromApi() async{

    var res = await http.get(Uri.parse(NewsUrl));

    NewsModel newsModel = NewsModel.fromJson(jsonDecode(res.body));

    newsArticlesList = newsModel.articles;
    print("url: ${newsArticlesList[0].urlToImage}");

    notifyListeners();
  }

}