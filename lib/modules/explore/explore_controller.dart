import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExploreController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TabController? tabController;
  @override
  void onInit() {
    tabController = TabController(length: 3, vsync: this);
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    tabController?.dispose();
  }
}
