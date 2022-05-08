import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:news_mvvm_arch/models/news_article.dart';
import 'package:news_mvvm_arch/services/web_service.dart';
import 'package:news_mvvm_arch/viewmodels/news_article_view_model.dart';

enum LoadingStatus {
  completed,
  searching,
  empty,
}

class NewsArticleListViewModel with ChangeNotifier {
  LoadingStatus loadingStatus = LoadingStatus.empty;
  List<NewsArticleViewModel> articles = [];

  void topHeadlines() async {
    List<NewsArticle> newsArticles = await WebService().fetchTopHeadlines();
    loadingStatus = LoadingStatus.searching;
    notifyListeners();

    articles = newsArticles
        .map((articles) => NewsArticleViewModel(article: articles))
        .toList();

    if (articles.isEmpty) {
      loadingStatus = LoadingStatus.empty;
    } else {}
    loadingStatus = LoadingStatus.completed;
  }
}
