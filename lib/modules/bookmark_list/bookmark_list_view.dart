import 'package:flutter/material.dart';

import 'widgets/bookmark_header.dart';
import 'widgets/highlighted_tab.dart';
import 'widgets/recently_viewed_tab.dart';
import 'widgets/saved_tab.dart';

class BookmarkListView extends StatelessWidget {
  const BookmarkListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              SliverAppBar(
                toolbarHeight: 100,
                title: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    BookmarkHeader(),
                  ],
                ),
                pinned: true,
                floating: true,
                bottom: TabBar(
                  labelPadding: EdgeInsets.zero,
                  indicatorColor: Colors.black,
                  tabs: [
                    Tab(text: 'Saved'),
                    Tab(text: 'Recently viewed'),
                    Tab(text: 'Highlighted'),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              SavedTab(),
              RecentltViewedTab(),
              HighlightedTab(),
            ],
          ),
        ),
      ),
    );
  }
}
