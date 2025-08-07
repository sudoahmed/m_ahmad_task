import 'dart:developer';

import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:m_ahmad_task/app/data/models/home/home_model.dart';
import 'package:m_ahmad_task/app/modules/home/repository/home_repository.dart';

class HomeController extends GetxController {
  final CarouselSliderController carouselController =
      CarouselSliderController();
  RxInt currentCarouselIndex = RxInt(0);
  int initalCarouselIndex = 0;
  RxBool isLoading = false.obs;

  RxList<DailyTarget> dailyTargets = <DailyTarget>[].obs;

  Future<void> getHomeData() async {
    try {
      isLoading.value = true;
      await Get.find<HomeRepository>().onGetHomeData(
        onSuccess: (homeData) {
          dailyTargets.value = homeData.dailyTargets; 
          log('Home data fetched successfully: ${homeData.toJson()}');
          isLoading.value = false;
        },
        onError: () {
          isLoading.value = false;
        },
      );
    } catch (e) {
      isLoading.value = false;

      log(e.toString());
    }
  }

  @override
  void onInit() {
    super.onInit();
    getHomeData();
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
