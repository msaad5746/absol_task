import 'dart:async';
import 'dart:convert';

import 'package:absol_task/export.dart';

class HomeRepoImpl implements HomeRepo {
  final NetworkHelper _networkHelper;
  final EndPoints _endPoints;

  HomeRepoImpl(this._networkHelper, this._endPoints);

  @override
  Future<Either<AppError, HomeModel>> getHomeData() async {
    try {
      final response = await _networkHelper.get(
        _endPoints.getCoronaSummary(),
      );
      if (response.statusCode == 200) {
        var data = json.decode(response.body.toString());
        return Right(HomeModel.fromJson(data));
      }
      return Left(
        AppError(),
      );
    } catch (e) {
      return Left(
        AppError(title: e.toString()),
      );
    }
  }
}
