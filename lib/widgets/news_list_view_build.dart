import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/article_model.dart';
import 'package:newsapp/service/news_service.dart';
import 'package:newsapp/widgets/loading.dart';
import 'package:newsapp/widgets/news_list_view.dart';


class NewsListViewBuild extends StatefulWidget {


  @override
  State<NewsListViewBuild> createState() => _NewsListViewBuildState();
}


class _NewsListViewBuildState extends State<NewsListViewBuild> {

var future;

  @override
  void initState() {
    super.initState();
 future = NewsService(Dio()).gitGenarlNews();

  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future ,
      builder: (context, snopshot) {
        if (snopshot.hasData) {
          return NewsListView(articles: snopshot.data!);
        } else if(snopshot.hasError){
          return SliverToBoxAdapter(child: Center(child: Text('error')),);
        } else {
          return SliverFillRemaining(hasScrollBody: false, child: Loadings());
        }
        
      },
    );
   
  }
}
