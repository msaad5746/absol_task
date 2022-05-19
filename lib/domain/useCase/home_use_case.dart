import 'package:absol_task/export.dart';

class HomeUseCase {
  final HomeRepo repo;

  HomeUseCase(this.repo);

  HomeModel data = HomeModel();

  Future<Either<AppError, AppSuccess>> getHomeData() async {
    try {
      final either = await repo.getHomeData();
      return either.fold(
        (error) => Left(AppError()),
        (data) {
          populateHomeData(data);
          return Right(AppSuccess());
        },
      );
    } catch (error) {
      return Left(AppError(title: error.toString()));
    }
  }

  void populateHomeData(HomeModel homeData) {
    data = homeData;
  }
}
