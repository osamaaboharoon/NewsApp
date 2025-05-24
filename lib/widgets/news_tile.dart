import 'package:flutter/material.dart';
import 'package:newsapp/models/article_model.dart';

// cached network image
class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});

  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              articleModel.image??'https://creativeschoolarabia.com/wp-content/webp-express/webp-images/uploads/2019/02/Moon-lunar-full-moon-amazing-creative-school-arabia-%D8%B5%D9%88%D8%B1%D8%A9-%D9%84%D9%84%D9%82%D9%85%D8%B1-%D8%AA%D8%B5%D9%88%D9%8A%D8%B1-%D8%A7%D9%84%D9%82%D9%85%D8%B1-%D8%AA%D8%B5%D9%88%D9%8A%D8%B1-%D9%81%D9%88%D8%AA%D9%88%D8%BA%D8%B1%D8%A7%D9%81%D9%8A-%D8%B5%D9%88%D8%B1%D8%A9-%D9%84%D9%84%D9%82%D9%85%D8%B1-%D9%85%D9%83%D9%88%D9%86%D8%A9-%D9%85%D9%86-50-%D8%A7%D9%84%D9%81-%D8%B5%D9%88%D8%B1%D8%A9-%D8%AA%D9%85-%D8%AA%D8%AC%D9%85%D9%8A%D8%B9%D9%87%D8%A7-%D8%A8%D8%A7%D9%84%D9%81%D9%88%D8%AA%D9%88%D8%B4%D9%88%D8%A83-780x470.jpg.webp',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            )),
        const SizedBox(
          height: 12,
        ),
        Text(
          articleModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          articleModel.subTitle??'' ,
          maxLines: 2,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        )
      ],
    );
  }
}