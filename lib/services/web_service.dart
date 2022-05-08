import 'package:dio/dio.dart';
import 'package:news_mvvm_arch/models/news_article.dart';

class WebService {
  var dio = Dio();

  Future<List<NewsArticle>> fetchTopHeadlines() async {
    String url =
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=82ddafb7b4e64fa9969072cfdec3f218';

    final response = await dio.get(url);

    if (response.statusCode == 200) {
      final result = response.data;

      Iterable list = result['articles'];

      return list.map((article) => NewsArticle.fromJson(article)).toList();
    } else {
      throw Exception('Fail getting top news');
    }
  }
}
