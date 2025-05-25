import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/article_model.dart';
import 'package:newsapp/service/news_service.dart';
import 'package:newsapp/widgets/loading.dart';
import 'package:newsapp/widgets/news_list_view.dart';

class NewsListViewBuild extends StatefulWidget {
  const NewsListViewBuild({super.key});

  @override
  State<NewsListViewBuild> createState() => _NewsListViewBuildState();
}

class _NewsListViewBuildState extends State<NewsListViewBuild> {
  List<ArticleModel> articles = [];
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    gitGenarlNewes();
  }

  void gitGenarlNewes() async {
    articles = await NewsService(Dio()).gitGenarlNews();
    isLoading = false;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? SliverFillRemaining(hasScrollBody: false, child: Loadings())
        : articles.isEmpty ?
        SliverToBoxAdapter(child: Text('error'),):
         NewsListView(articles: articles);
  }
}
