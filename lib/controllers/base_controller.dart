import 'package:get/get.dart';

class BaseController extends GetxController {
  var selectedIndex = 0;
  void indexGetter(index) {
    selectedIndex = index;
    update();
  }
}
