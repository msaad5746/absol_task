import 'package:absol_task/export.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchController extends GetxController with StateMixin<SearchPage> {
  final HomeUseCase useCase;

  SearchController(this.useCase);

  TextEditingController searchController = TextEditingController();

  List<Countries> data = List.empty(growable: true);
  var searchedData= Rx<List<Countries>>;

  @override
  void onInit() {
    data.addAll(useCase.data.countries!);
    change(null, status: RxStatus.success());

    super.onInit();
  }

  onSearch(String value) {}
}
