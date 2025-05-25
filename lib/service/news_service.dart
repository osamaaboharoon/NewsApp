import 'package:dio/dio.dart';
import 'package:newsapp/models/article_model.dart';

class NewsService {
  final Dio dio;
  
  
NewsService(this.dio);
  
Future<List<ArticleModel>>  gitGenarlNews() async {

  try {
  var respons = await dio.get('https://newsapi.org/v2/top-headlines?apiKey=053eb0061d4a400ca1921d035938f42e&category=generalss');
  Map<String,dynamic> jsonData  =  respons.data;
   List<dynamic> articles = jsonData['articles'];
  List<ArticleModel> articlesList=[
   
  ];
  for (var article in articles) {
  
  ArticleModel articleModel = ArticleModel(image: article['urlToImage'], subTitle: article['description'], title: article['title']);
  articlesList.add(articleModel);
  
  }
  return articlesList ;
}  catch (e) {
return  [];
}


}
}