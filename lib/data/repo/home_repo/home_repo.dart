import 'package:absol_task/export.dart';

mixin HomeRepo {
  Future<Either<AppError, HomeModel>> getHomeData();
}
