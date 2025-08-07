import 'dart:developer';

import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:m_ahmad_task/app/modules/home/repository/home_repository.dart';

class HomeController extends GetxController {
  final CarouselSliderController carouselController =
      CarouselSliderController();
  RxInt currentCarouselIndex = RxInt(0);
  int initalCarouselIndex = 0;
  RxBool isLoading = false.obs;

  Future<void> getHomeData() async {
    try {
      await Get.find<HomeRepository>().onGetHomeData(
        onSuccess: (homeData) {
          log('Home data fetched successfully: ${homeData.toJson()}');
        },
        onError: () {
          isLoading.value = true;
        },
      );
    } catch (e) {
      isLoading.value = true;

      log(e.toString());
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
