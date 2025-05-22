
import 'package:flutter/material.dart';
import 'package:newsapp/models/article_model.dart';
import 'package:newsapp/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({
    super.key,
  });
  final List<ArticleModel> listIteam = const [
    ArticleModel(image: "assets/business.avif", subTitle: " subTitle subTitle subTitle subTitlesubTitle vsubTitle subTitl esubTitl esubTitlesubTitle", title: "title"),
    ArticleModel(image: "assets/business.avif", subTitle: "subTitle", title: "title"),
    ArticleModel(image: "assets/business.avif", subTitle: "subTitle", title: "title"),
    ArticleModel(image: "assets/business.avif", subTitle: "subTitle", title: "title"),
    ArticleModel(image: "assets/business.avif", subTitle: "subTitle", title: "title"),
  ];


  @override
  Widget build(BuildContext context) {
    return SliverList(
      
      delegate: SliverChildBuilderDelegate
    ((Context,Index){
              return 
               Padding(
          padding: const EdgeInsets.only(bottom: 22),
          child: NewsTile(articleModel: listIteam[Index]),
        );
            },
           childCount: listIteam.length,
            )
    );  }
}