import 'package:flutter/material.dart';
import 'package:newsapp/widgets/category_list_view.dart';

import 'package:newsapp/widgets/news_list_view.dart';
import 'package:newsapp/widgets/news_tile.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('News'),
            Text('Cloud', style: TextStyle(color: Colors.orange)),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),

        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CategoryListView()),
            SliverToBoxAdapter(child: SizedBox(height: 32,),),
            NewsListView()
            
]
        ),
        // child:
        //
        // Column(

        //   children: [
        //     CategoryListView(),
        //     SizedBox(height: 32,),
        //     Expanded(child: NewsListView())
        //   ],
        // ),
      ),
    );
  }
}
