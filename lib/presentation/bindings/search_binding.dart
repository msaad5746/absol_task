import 'package:absol_task/export.dart';
import 'package:get/get.dart';

class SearchBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchController>(
        () => SearchController(Get.find<HomeUseCase>()));
  }
}
