import 'package:flutter/material.dart';
import 'package:news_mvvm_arch/viewmodels/news_article_list_view_model.dart';
import 'package:news_mvvm_arch/views/news_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter News App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color(0xfffefdfd),
        appBarTheme: const AppBarTheme(
            color: Color(0xfffefdfd),
            elevation: 0,
            toolbarTextStyle: TextStyle(color: Colors.black),
            actionsIconTheme: IconThemeData(color: Colors.black)),
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => NewsArticleListViewModel(),
          )
        ],
        child: const NewsScreen(),
      ),
    );
  }
}
