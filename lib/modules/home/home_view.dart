import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medium_clone_danu/modules/activity/activity_view.dart';

import 'widgets/home_following.dart';
import 'widgets/home_recommended.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              SliverAppBar(
                toolbarHeight: 100,
                pinned: true,
                floating: true,
                title: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Home'),
                        InkWell(
                          onTap: () {
                            Get.to(() => ActivityView());
                          },
                          child: Icon(
                            Icons.notifications_outlined,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                bottom: TabBar(
                  indicatorColor: Colors.black,
                  tabs: [
                    Tab(text: 'Following'),
                    Tab(text: 'Recommended'),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              HomeFollowing(),
              HomeRecommended(),
            ],
          ),
        ),
      ),
    );
  }
}
