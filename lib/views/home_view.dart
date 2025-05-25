import 'package:flutter/material.dart';
import 'package:newsapp/widgets/category_list_view.dart';
import 'package:newsapp/widgets/news_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, 
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Column(
          children: [
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
                children: [
                  TextSpan(text: 'News', style: TextStyle(color: Colors.black87)),
                  TextSpan(text: 'Cloud', style: TextStyle(color: Colors.orange)),
                ],
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              'Made with ❤️ by Osama Haroon',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: SizedBox(height: 80)), // لتفادي overlap مع AppBar
            SliverToBoxAdapter(child: CategoryListView()),
            const SliverToBoxAdapter(child: SizedBox(height: 32)),
            NewsListViewBuilder(category: 'general'),
          ],
        ),
      ),
    );
  }
}