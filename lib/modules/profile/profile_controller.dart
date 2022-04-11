import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileController extends GetxController {
  urlLauncher() async {
    await launch('https://www.google.com/');
  }

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
