import 'package:absol_task/export.dart';
import 'package:get/get.dart';

class RepoDependencies {
  late NetworkHelper _networkHelper;
  late EndPoints _endPoints;

  Future init() async {
    _endPoints = EndPoints();
    _networkHelper = NetworkHelperImpl();
  }

  initializeRepoDependencies() {
    Get.lazyPut<HomeRepo>(
      () => HomeRepoImpl(_networkHelper, _endPoints),
    );
  }
}
