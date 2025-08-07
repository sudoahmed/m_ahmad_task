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
  RxList<DayValue> chartData = <DayValue>[].obs;
  RxList<Recommendation> recommendations = <Recommendation>[].obs;
  RxList<CategoryModel> category = <CategoryModel>[].obs;

  Future<void> getHomeData() async {
    try {
      isLoading.value = true;
      await Get.find<HomeRepository>().onGetHomeData(
        onSuccess: (homeData) {
          dailyTargets.value = homeData.dailyTargets;
          ChartMoodData chartMoodData = createChartMoodData(
              homeData.graphs.digestionChart.weeklyMood.days,
              homeData.graphs.digestionChart.weeklyMood.values);
          log('The generated Chart data is this::::::::::::::::::: ${chartMoodData.moodData}');
          chartData.value = chartMoodData.moodData;
          recommendations.value = homeData.recommendations;
          category.value = homeData.categories;
          // log('Home data fetched successfully: ${homeData.toJson()}');
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

// WeeklyMood class
class WeeklyMood {
  final Map<String, int> dailyMoods;

  WeeklyMood({required this.dailyMoods});
}

// Function that takes two lists and returns WeeklyMood object
WeeklyMood createWeeklyMoodFromLists(List<String> days, List<int> values) {
  if (days.isEmpty || values.isEmpty) {
    throw ArgumentError('Both lists cannot be empty');
  }

  if (days.length != values.length) {
    throw ArgumentError('Days and values lists must have the same length');
  }

  return WeeklyMood(
    dailyMoods: Map.fromIterables(days, values),
  );
}

// Day/Value model
class DayValue {
  final String day;
  final int value;

  DayValue({
    required this.day,
    required this.value,
  });

  // Convert to JSON
  Map<String, dynamic> toJson() {
    return {
      'day': day,
      'value': value,
    };
  }

  // Create from JSON
  factory DayValue.fromJson(Map<String, dynamic> json) {
    return DayValue(
      day: json['day'],
      value: json['value'],
    );
  }
}

// ChartMoodData model
class ChartMoodData {
  final List<DayValue> moodData;

  ChartMoodData({
    required this.moodData,
  });

  // Convert to JSON
  Map<String, dynamic> toJson() {
    return {
      'moodData': moodData.map((e) => e.toJson()).toList(),
    };
  }

  // Create from JSON
  factory ChartMoodData.fromJson(Map<String, dynamic> json) {
    return ChartMoodData(
      moodData:
          (json['moodData'] as List).map((e) => DayValue.fromJson(e)).toList(),
    );
  }
}

// Function that takes two lists, maps them by index, and returns ChartMoodData
ChartMoodData createChartMoodData(List<String> days, List<int> values) {
  if (days.isEmpty || values.isEmpty) {
    throw ArgumentError('Both lists cannot be empty');
  }

  if (days.length != values.length) {
    throw ArgumentError('Days and values lists must have the same length');
  }

  // Map lists by index to create DayValue objects
  List<DayValue> dayValueList = <DayValue>[];
  for (int i = 0; i < days.length; i++) {
    dayValueList.add(DayValue(
      day: days[i],
      value: values[i],
    ));
  }

  // Convert to JSON and then use fromJson to create ChartMoodData
  Map<String, dynamic> jsonData = <String, dynamic>{
    'moodData': dayValueList.map((DayValue e) => e.toJson()).toList(),
  };

  return ChartMoodData.fromJson(jsonData);
}
