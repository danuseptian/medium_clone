import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class EditProfileController extends GetxController {
  late TextEditingController nameC;
  late TextEditingController bioC;
  @override
  void onInit() {
    nameC = TextEditingController();
    bioC = TextEditingController();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    nameC.dispose();
    bioC.dispose();
  }
}
