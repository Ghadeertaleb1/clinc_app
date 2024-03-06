import 'package:get/get.dart';

class LoginController extends GetxController {
  RxBool visibility = true.obs;

  void changeVisibility() {
    visibility.value = !visibility.value;
    update();
  }
}
