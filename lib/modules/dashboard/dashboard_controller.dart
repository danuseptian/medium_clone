import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../bookmark_list/bookmark_list_view.dart';
import '../explore/explore_view.dart';
import '../home/home_view.dart';
import '../profile/profile_view.dart';

class DashboardController extends GetxController {
  final selectedIndex = 0.obs;
  void onItemTapped(int index) => selectedIndex.value = index;

  List<Widget> bottomTabView = [
    HomeView(),
    ExploreView(),
    BookmarkListView(),
    ProfileView(),
  ];
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
