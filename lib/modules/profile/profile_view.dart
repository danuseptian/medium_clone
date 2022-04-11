import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medium_clone_danu/modules/profile/profile_controller.dart';
import 'package:medium_clone_danu/modules/publish/publish_view.dart';

import 'widgets/about_tab.dart';
import 'widgets/lists_tab.dart';
import 'widgets/profile_header.dart';
import 'widgets/stories_tab.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final controller = Get.put(ProfileController());
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.green[800],
            onPressed: () {
              Get.to(() => PublishView());
            },
            child: Icon(
              Icons.edit_note,
              color: Colors.white,
            ),
          ),
          appBar: AppBar(
            toolbarHeight: 190,
            flexibleSpace: ProfileHeader(),
            bottom: TabBar(
              labelPadding: EdgeInsets.zero,
              indicatorColor: Colors.black,
              tabs: [
                Tab(text: 'Stories'),
                Tab(text: 'Lists'),
                Tab(text: 'About'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              StoriesTab(),
              ListsTab(),
              AboutTab(),
            ],
          ),
        ),
      ),
    );
  }
}
