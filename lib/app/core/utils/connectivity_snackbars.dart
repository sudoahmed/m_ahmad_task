import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ConnectivitySnackbars {
  static showNoConnectionSnackbar() {
    Get.snackbar(
      "Connectivity Error",
      "No internet connection",
      backgroundColor: Colors.red,
      colorText: Colors.white,
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 3),
    );
  }

  static showConnectionRestoredSnackbar() {
    Get.snackbar(
      "Connectivity Restored",
      "Internet connection is back",
      backgroundColor: Colors.green,
      colorText: Colors.white,
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 3),
    );
  }
}
