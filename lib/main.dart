
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/service/news_service.dart';
import 'package:newsapp/views/home_view.dart';

void main(){
  NewsService(Dio()).gitGenarlNews();
  runApp(const NewsApp());
  
}
class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),);
  }
}