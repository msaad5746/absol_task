import 'package:get/get.dart';
import 'package:absol_task/export.dart';

class TabsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TabsController>(
      () => TabsController(),
    );
  }
}
