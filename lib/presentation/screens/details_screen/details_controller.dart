import 'package:absol_task/export.dart';
import 'package:get/get.dart';

class DetailsController extends GetxController with StateMixin<DetailsPage> {
  Countries data = Countries();

  @override
  void onInit() {
    data = Get.arguments;
    change(null, status: RxStatus.success());
    super.onInit();
  }

  onBack() {
    Get.back();
  }
}
