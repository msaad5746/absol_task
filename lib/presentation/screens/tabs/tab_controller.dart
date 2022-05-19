import 'package:absol_task/export.dart';
import 'package:get/get.dart';

class TabsController extends GetxController with StateMixin<Tabs> {
  Rx<int> tabIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    Get.lazyPut(() => HomeController(Get.find<HomeUseCase>()));
    Get.lazyPut(() => SearchController(Get.find<HomeUseCase>()));
  }

  onChangeTab(int index) {
    tabIndex.value = index;
  }
}
