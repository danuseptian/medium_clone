import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medium_clone_danu/modules/explore/explore_controller.dart';

import 'widgets/explore_follow_suggest.dart';
import 'widgets/explore_header.dart';
import 'widgets/explore_reading_today.dart';
import 'widgets/explore_recommended.dart';
import 'widgets/explore_trending.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final controller = Get.put(ExploreController());
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            ExploreHeader(),
            Divider(
              thickness: 3,
              color: Colors.grey[200],
            ),
            ExploreTrending(),
            ExploreReadingToday(),
            ExploreRecommended(),
            Divider(
              thickness: 3,
              color: Colors.grey[200],
            ),
            ExploreFollowSuggest(),
          ],
        ),
      ),
    );
  }
}
