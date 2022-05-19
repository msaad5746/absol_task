import 'export.dart';

class HomeModel {
  final Global? global;
  final List<Countries>? countries;

  HomeModel({this.global, this.countries});

  factory HomeModel.fromJson(dynamic json) {
    List<Countries> countriesList = [];
    if (json['Countries'] != null) {
      json['Countries'].forEach((v) {
        countriesList.add(Countries.fromJson(v));
      });
    }
    return HomeModel(
      global: json['Global'] != null ? Global.fromJson(json['Global']) : null,
      countries: countriesList,
    );
  }
}


