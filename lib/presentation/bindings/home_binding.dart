import 'package:absol_task/export.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController(Get.find<HomeUseCase>()));
    // Get.put<Service>(()=> Api());
  }
}
