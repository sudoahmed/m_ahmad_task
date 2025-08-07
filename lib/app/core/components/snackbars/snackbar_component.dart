import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:m_ahmad_task/app/core/constants/colors.dart';

class SnackBarComponent {
  void _mainSnackBar({
    String mainText = "Main text",
    String subText = "Sub text",
    Color bgColor = Colors.grey,
    SnackPosition snackBarPosition = SnackPosition.BOTTOM,
  }) {
    Get.snackbar(
      mainText,
      subText,
      snackPosition: snackBarPosition,
      backgroundColor: bgColor,
      borderRadius: 20,
      margin: const EdgeInsets.all(15),
      colorText: AppColors.white,
      duration: const Duration(seconds: 3),
      isDismissible: true,
      forwardAnimationCurve: Curves.easeOutBack,
    );
  }

  void showErrorSnackBar(
      {required String errorText,
      SnackPosition snackPosition = SnackPosition.BOTTOM}) {
    return _mainSnackBar(
      mainText: "Error",
      subText: errorText,
      bgColor: AppColors.guardsmanRed,
      snackBarPosition: snackPosition,
    );
  }

  void showSuccessSnackBar({String successText = "Default Success"}) {
    return _mainSnackBar(
      mainText: "Success",
      subText: successText,
      bgColor: AppColors.fern,
    );
  }
}
