import 'package:absol_task/export.dart';
import 'package:get/get.dart';

class DetailsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailsController>(() => DetailsController());
  }
}
