import 'package:absol_task/export.dart';
import 'package:get/get.dart';


Future<void> initializeUseCasesDependencies() async {
  final RepoDependencies repoDependencies = RepoDependencies();
  await repoDependencies.init();
  await repoDependencies.initializeRepoDependencies();

  Get.lazyPut<HomeUseCase>(
    () => HomeUseCase(
      Get.find<HomeRepo>(),
    ),
  );

}
