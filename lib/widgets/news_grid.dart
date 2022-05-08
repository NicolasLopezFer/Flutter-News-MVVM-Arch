import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_mvvm_arch/viewmodels/news_article_view_model.dart';
import 'package:news_mvvm_arch/widgets/circle_image.dart';

class NewsGrid extends StatelessWidget {
  NewsGrid({Key? key, required this.articles}) : super(key: key);
  List<NewsArticleViewModel> articles = [];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
      ),
      itemBuilder: (context, index) {
        var article = articles[index];
        return GridTile(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: CircleImage(
              imageUrl: article.imageUrl ?? '',
            ),
          ),
          footer: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              article.title.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        );
      },
      itemCount: articles.length,
    );
  }
}
