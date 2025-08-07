import 'dart:developer';
import 'dart:io';
import 'package:dio/dio.dart' as dio;
import 'package:get/get.dart';
import 'package:m_ahmad_task/app/core/constants/endpoints.dart';
import 'package:m_ahmad_task/app/core/constants/hive_keys.dart';
import 'package:m_ahmad_task/app/core/services/api_service.dart';
import 'package:m_ahmad_task/app/core/services/hive_service.dart';
import 'package:m_ahmad_task/app/data/models/home/home_model.dart';

class HomeRepository {
  final ApiService apiService;
  final MainBox mainBox;

  const HomeRepository(this.apiService, this.mainBox);

  Future<void> onGetHomeData(
      {required void Function(HomeModel) onSuccess,
      required void Function() onError}) async {
    try {
      apiService.getRequest(
        forceAuth: true,
        url: ApiEndpoints.getHome,
        onSuccess: (responseBody) {
          onSuccess(HomeModel.fromJson(responseBody['data']));
        },
        onError: () {
          onError();
        },
      );
    } catch (e) {
      log(e.toString());
      onError();
    }
  }
}
