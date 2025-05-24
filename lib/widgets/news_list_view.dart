
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/article_model.dart';
import 'package:newsapp/service/news_service.dart';
import 'package:newsapp/widgets/news_tile.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({
    super.key,
  });

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  List<ArticleModel> articles =[];
  @override
  void initState()  {
    super.initState();
   getGenaralNews();

  }

  Future<void> getGenaralNews() async {
    articles = await NewsService(Dio()).gitGenarlNews();
    setState(() {
      
    });
  }



  @override
  Widget build(BuildContext context) {
    return SliverList(
      
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
      (Context,Index){
              return 
               Padding(
          padding: const EdgeInsets.only(bottom: 22),
          child: NewsTile(articleModel: articles[Index]),
        );
            },
           
            )
    );  }
}