import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/article_model.dart';
import 'package:newsapp/service/news_service.dart';
import 'package:newsapp/widgets/news_list_view.dart';


class NewsListViewBuild extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: NewsService(Dio()).gitGenarlNews(),
      builder: (context, snopshot) {
        return NewsListView(articles: snopshot.data ??[]);
      },
    );
    // return isLoading
    //     ? SliverFillRemaining(hasScrollBody: false, child: Loadings())
    //     : articles.isEmpty ?
    //     SliverToBoxAdapter(child: Text('error'),):
    //      NewsListView(articles: articles);
  }
}
