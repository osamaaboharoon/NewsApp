import 'package:flutter/material.dart';
import 'package:newsapp/models/category_model.dart';
import 'package:newsapp/widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });
   final List<CategoryModel> Categories = const [
    CategoryModel(image: 'assets/business.avif', categoryName: 'business'),
    CategoryModel(image: 'assets/entertaiment.avif', categoryName: 'entertaiment'),
    CategoryModel(image: 'assets/general.avif', categoryName: 'general'),
    CategoryModel(image: 'assets/health.avif', categoryName: 'health'),
    CategoryModel(image: 'assets/science.avif', categoryName: 'science'),  
    CategoryModel(image: 'assets/technology.jpeg', categoryName: 'technology'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(

        scrollDirection: Axis.horizontal,
        itemCount: Categories.length,
        itemBuilder: (context,index){
        return CategoryCard(category: Categories[index],);
      }),
    );
  }
}
