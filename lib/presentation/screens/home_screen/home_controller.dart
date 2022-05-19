import 'package:absol_task/export.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with StateMixin<HomePage> {
  final HomeUseCase useCase;

  HomeController(this.useCase);

  @override
  Future<void> onInit() async {
    super.onInit();
    change(null, status: RxStatus.loading());
    await useCase.getHomeData();
    if (useCase.data.countries!.isNotEmpty) {
      change(null, status: RxStatus.success());
    } else {
      change(
        null,
        status: RxStatus.empty(),
      );
    }
  }

  HomeModel get data => useCase.data;
}
