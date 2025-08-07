import 'dart:developer';
import 'dart:io';
import 'package:dio/dio.dart' as dio;
import 'package:get/get.dart';
import 'package:m_ahmad_task/app/core/constants/endpoints.dart';
import 'package:m_ahmad_task/app/core/constants/hive_keys.dart';
import 'package:m_ahmad_task/app/core/services/api_service.dart';
import 'package:m_ahmad_task/app/core/services/hive_service.dart';

class LoginRepository {
  final ApiService apiService;
  final MainBox mainBox;

  const LoginRepository(this.apiService, this.mainBox);

  Future<void> onLogin(
      {required String email,
      required String password,
      required void Function(dynamic) onSuccess,
      required void Function() onError}) async {
    try {
      apiService.postRequest(
        bodyData: {
          "email": email,
          "password": password,
        },
        forceAuth: false,
        url: ApiEndpoints.login,
        onSuccess: (responseBody) {
          mainBox.addData<String>(
              HiveKeys.token, responseBody['data']['access_token']);
          onSuccess(responseBody);
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
