import 'package:news_mvvm_arch/models/news_article.dart';

class NewsArticleViewModel {
  NewsArticle _newsArticle;

  NewsArticleViewModel({required NewsArticle article}) : _newsArticle = article;

  String? get title => _newsArticle.title;
  String? get description => _newsArticle.description;
  String? get imageUrl => _newsArticle.urlToImage;
  String? get url => _newsArticle.url;
  String? get author => _newsArticle.author;
  String? get publishedAt => _newsArticle.publishedAt;
  String? get content => _newsArticle.content;
}
