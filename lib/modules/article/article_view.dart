import 'package:flutter/material.dart';

import 'widgets/article_app_bar.dart';
import 'widgets/article_author.dart';
import 'widgets/article_header.dart';
import 'widgets/article_post.dart';
import 'widgets/article_recommended.dart';

class ArticleView extends StatelessWidget {
  final dynamic item;
  const ArticleView({Key? key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ArticleAppBar(item: item),
              SizedBox(
                height: 10,
              ),
              ArticleHeader(item: item),
              ArticlePost(item: item),
              ArticleAuthor(item: item),
              ArticleRecommended(),
            ],
          ),
        ),
      ),
    );
  }
}
