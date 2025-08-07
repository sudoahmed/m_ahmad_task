import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart' as getx;
import 'package:m_ahmad_task/app/core/constants/hive_keys.dart';
import 'package:m_ahmad_task/app/core/services/hive_service.dart';
import 'package:m_ahmad_task/app/core/utils/api_error_handlers.dart';
import 'package:m_ahmad_task/app/core/utils/connectivity_snackbars.dart';
import 'package:m_ahmad_task/app/core/utils/general_methods.dart';

class ApiService extends getx.GetxService {
  Future<ApiService> init() async {
    // Initialization logic, if needed
    print("Api service initialized.");
    return this;
  }

  final mainBox = getx.Get.find<MainBox>();

  final Dio dioRequest = Dio(BaseOptions(
    connectTimeout: Duration(seconds: 10),
    receiveTimeout: Duration(seconds: 15),
    sendTimeout: Duration(seconds: 10),
  ));
  final Dio dioMultiPartRequest = Dio(BaseOptions());

  logDioExceptions(DioException e) {
    if (e.type == DioExceptionType.connectionTimeout) {
      log('Connection timeout. Please check your internet connection.');
    } else if (e.type == DioExceptionType.receiveTimeout) {
      log('Receive timeout. The server took too long to respond.');
    } else if (e.type == DioExceptionType.badResponse) {
      log('Received an invalid status code: ${e.response?.statusCode}');
    } else if (e.type == DioExceptionType.unknown) {
      log('No internet connection or unknown error occurred.');
    } else {
      log('Something went wrong: ${e.message}');
    }
  }

  Future<bool> checkInternetConnection() async {
    try {
      // Check connectivity status
      final connectivityResult = await Connectivity().checkConnectivity();

      if (connectivityResult == ConnectivityResult.none) {
        // No connectivity
        return false;
      }

      // Confirm actual internet access by pinging a reliable website
      final result = await InternetAddress.lookup('example.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return true; // Internet is available
      }
    } catch (e) {
      // Handle any exception (e.g., DNS lookup failure)
      print('Error checking internet connection: $e');
    }

    return false; // Default to no internet
  }

  Future<void> getRequest({
    required String url,
    required void Function(dynamic)
        onSuccess, // Changed to dynamic to handle both Map and bytes
    required void Function() onError,
    Map<String, dynamic>? bodyData,
    bool forceAuth = false,
    void Function(int, int)? uploadingProgress,
    bool isBinaryResponse = false, // New parameter to control response type
  }) async {
    try {
      late final Response response;

      if (await checkInternetConnection()) {
        if (forceAuth) {
          final authHeaders = await _useAuthHeaderMap();
          log(authHeaders.toString());
          response = await dioRequest.get(
            url,
            data: bodyData,
            options: Options(
              headers: authHeaders,
            ),
          );
        } else {
          response = await dioRequest.get(
            url,
            data: bodyData,
            options: Options(
              headers: {
                'Content-Type': 'application/json',
              },
            ),
          );
        }

        // Handle binary response
        if (isBinaryResponse) {
          onSuccess(response.data); // response.data will be Uint8List
          return;
        }

        // Handle JSON response (original behavior)
        dynamic jsonDecodedResponse;
        if (response.data is String) {
          jsonDecodedResponse = {"data": response.data};
        } else {
          jsonDecodedResponse = response.data;
          GeneralMethods.logPrettyJson(response.data);
        }

        int statusCode = response.statusCode ?? 401;
        if (statusCode >= 200 && statusCode < 300) {
          onSuccess(jsonDecodedResponse);
        }
      } else {
        onError();
        ConnectivitySnackbars.showNoConnectionSnackbar();
      }
    } on DioException catch (e) {
      if (e.response == null) {
        // Handle network errors like no internet, DNS issues, or server being down
        if (e.type == DioExceptionType.connectionTimeout) {
          ApiErrorHandlers.showErrorWidget(
              errorMessage:
                  'Connection timeout. Please check your internet connection.');
        } else if (e.type == DioExceptionType.receiveTimeout) {
          ApiErrorHandlers.showErrorWidget(
              errorMessage: 'The server took too long to respond.');
        } else if (e.type == DioExceptionType.badResponse) {
          ApiErrorHandlers.showErrorWidget(
              errorMessage: 'Received an invalid response from the server.');
        } else if (e.type == DioExceptionType.unknown) {
          ApiErrorHandlers.showErrorWidget(
              errorMessage:
                  'No internet connection or unknown error occurred.');
        } else {
          ApiErrorHandlers.showErrorWidget(
              errorMessage: 'Something went wrong: ${e.message}');
        }
      } else {
        // If we have a response, handle it as usual
        ApiErrorHandlers.handleHttpErrors(
          errorStatusCode: e.response?.statusCode,
          apiErrorMessage: e.response?.data["message"],
        );
      }
      onError();
    } on SocketException {
      ApiErrorHandlers.showErrorWidget(
          errorMessage: "Check your mobile or wifi connection");
      onError();
    } on TimeoutException {
      ApiErrorHandlers.showErrorWidget(errorMessage: "Timeout");
      onError();
    } catch (e) {
      log(e.toString());

      onError();
    }
  }

  Future<void> postRequest(
      {required String url,
      required void Function(dynamic) onSuccess,
      required void Function() onError,
      required Map<String, dynamic> bodyData,
      bool forceAuth = false,
      bool isBypassErrorWidget = false}) async {
    try {
      log(url.toString());
      log(bodyData.toString());
      late final Response response;

      if (await checkInternetConnection()) {
        if (forceAuth) {
          final authHeaders = await _useAuthHeaderMap();
          log(authHeaders.toString());
          response = await dioRequest.post(
            url,
            data: bodyData,
            options: Options(
              headers: authHeaders,
            ),
          );
        } else {
          response = await dioRequest.post(
            url,
            data: bodyData,
            options: Options(
              headers: {
                'Content-Type': 'application/json',
              },
            ),
          );
        }

        Map<String, dynamic> jsonDecodedResponse = response.data;
        GeneralMethods.logPrettyJson(response.data);
        // log('THE RESPONSE IS :::::::::::::::::::::::::::::::::::: ${response.data}');
        int statusCode = response.statusCode ?? 401;
        if (statusCode >= 200 && statusCode < 300) {
          onSuccess(jsonDecodedResponse);
        }
      } else {
        onError();
        ConnectivitySnackbars.showNoConnectionSnackbar();
      }
    } on DioException catch (e) {
      onError();

      if (e.response == null) {
        // Handle network errors like no internet, DNS issues, or server being down
        if (e.type == DioExceptionType.connectionTimeout) {
          ApiErrorHandlers.showErrorWidget(
              errorMessage:
                  'Connection timeout. Please check your internet connection.');
        } else if (e.type == DioExceptionType.receiveTimeout) {
          ApiErrorHandlers.showErrorWidget(
              errorMessage: 'The server took too long to respond.');
        } else if (e.type == DioExceptionType.badResponse) {
          ApiErrorHandlers.showErrorWidget(
              errorMessage: 'Received an invalid response from the server.');
        } else if (e.type == DioExceptionType.unknown) {
          ApiErrorHandlers.showErrorWidget(
              errorMessage:
                  'No internet connection or unknown error occurred.');
        } else {
          ApiErrorHandlers.showErrorWidget(
              errorMessage: 'Something went wrong: ${e.message}');
        }
      } else {
        // If we have a response, handle it as usual
        log(e.response.toString());
        ApiErrorHandlers.handleHttpErrors(
          errorStatusCode: e.response?.statusCode,
          apiErrorMessage: e.response?.data["message"],
        );
      }
    } on SocketException {
      if (!isBypassErrorWidget) {
        ApiErrorHandlers.showErrorWidget(
            errorMessage: "Check your mobile or wifi connection");
      }
      onError();
    } on TimeoutException {
      if (!isBypassErrorWidget) {
        ApiErrorHandlers.showErrorWidget(errorMessage: "Timeout");
      }
      onError();
    } catch (e) {
      if (!isBypassErrorWidget) {
        ApiErrorHandlers.showErrorWidget(errorMessage: e.toString());
      }
      onError();
    }
  }

  Future<dynamic> _useAuthHeader() async {
    String getUserToken = await mainBox.getData(HiveKeys.token);
    log('The token is :::::::::::::::::::::::::::::::::::: $getUserToken');
    return {
      "token": getUserToken,
      'Content-Type': 'multipart/form-data',
    };
  }

  Future<dynamic> _useAuthHeaderMap() async {
    String getUserToken = await mainBox.getData(HiveKeys.token);
    log('The token is :::::::::::::::::::::::::::::::::::: $getUserToken');
    return {
      "Authorization": 'Bearer $getUserToken',
    };
  }
}
