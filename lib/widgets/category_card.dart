import 'package:flutter/material.dart';
import 'package:newsapp/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key,required this.category});

 final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
      
        height: 100,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(category.image)),
        ),
        child: Center(
          child: Text(category.categoryName, style: TextStyle(fontSize: 18,
          fontWeight: FontWeight.bold,
            color: Colors.white)),
        ),
      ),
    );
  }
}
