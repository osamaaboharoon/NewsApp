// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:newsapp/models/article_model.dart';
// import 'package:newsapp/service/news_service.dart';
// import 'package:newsapp/widgets/loading.dart';
// import 'package:newsapp/widgets/news_tile.dart';

// class NewsListView extends StatefulWidget {
//   const NewsListView({super.key});

//   @override
//   State<NewsListView> createState() => _NewsListViewState();
// }

// class _NewsListViewState extends State<NewsListView> {
//   List<ArticleModel> articles = [];
//   bool isLoding =true;
//   @override
//   void initState() {
//     super.initState();
//     getGenaralNews();
//   }

//   Future<void> getGenaralNews() async {
//     articles = await NewsService(Dio()).gitGenarlNews();
//     isLoding =false;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
   
//     return isLoding ? SliverFillRemaining(
//       hasScrollBody: false,
//       child: Loadings()): SliverList(
//       delegate: SliverChildBuilderDelegate(childCount: articles.length, (
//         Context,
//         Index,
//       ) {
//         return Padding(
//           padding: const EdgeInsets.only(bottom: 22),
//           child: NewsTile(articleModel: articles[Index]),
//         );
//       }),
//     );
//   }
// }
