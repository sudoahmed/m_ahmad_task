import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:m_ahmad_task/app/core/components/dialogs/wait_dialog.dart';
import 'package:m_ahmad_task/app/modules/login/login_repository/login_repository.dart';
import 'package:m_ahmad_task/app/routes/app_pages.dart';

class LoginController extends GetxController {
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final FocusNode emailFocusNode = FocusNode();
  final TextEditingController passwordController = TextEditingController();
  final FocusNode passwordFocusNode = FocusNode();

  RxBool isRememberMe = false.obs;
  RxBool isLoading = false.obs;

  void toggleRememberMe() {
    isRememberMe.value = !isRememberMe.value;
  }

  Future<void> login(
      {required BuildContext context,
      required void Function(dynamic) onSuccess,
      required void Function() onError}) async {
    try {
      WaitDialog()
          .callBasicLoaderDialog(context: context, loaderText: 'Logging in...');
      Get.find<LoginRepository>().login(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
        onSuccess: (responseBody) {
          onSuccess(responseBody);
          Get.close(1);
          Get.offAllNamed(Routes.HOME);
        },
        onError: () {
          Get.close(1);
        },
      );
    } catch (e) {
      Get.close(1);
      log(e.toString());
      onError();
    }
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
