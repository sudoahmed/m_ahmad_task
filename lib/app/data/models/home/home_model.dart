import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_model.freezed.dart';
part 'home_model.g.dart';

@freezed
class HomeModel with _$HomeModel {
  const factory HomeModel({
    @JsonKey(name: 'daily_targets') @Default([]) List<DailyTarget> dailyTargets,
    @Default(Graphs()) Graphs graphs,
    @Default([]) List<Recommendation> recommendations,
    @Default([]) List<CategoryModel> categories,
  }) = _HomeModel;

  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelFromJson(json);
}

// Daily Target
@freezed
class DailyTarget with _$DailyTarget {
  const factory DailyTarget({
    @Default('') String name,
    @JsonKey(name: 'total_target') @Default(0) dynamic totalTarget,
    @JsonKey(name: 'achieved_target') @Default(0) dynamic achievedTarget,
  }) = _DailyTarget;

  factory DailyTarget.fromJson(Map<String, dynamic> json) =>
      _$DailyTargetFromJson(json);
}

// Graphs
@freezed
class Graphs with _$Graphs {
  const factory Graphs({
    @JsonKey(name: 'digestion_chart') @Default(DigestionChart()) DigestionChart digestionChart,
    @JsonKey(name: 'food_intake_pie') @Default([]) List<FoodIntakePie> foodIntakePie,
    @JsonKey(name: 'water_intake') @Default([]) List<String> waterIntake,
    @JsonKey(name: 'micronutrient_bar') @Default(MicronutrientBar()) MicronutrientBar micronutrientBar,
  }) = _Graphs;

  factory Graphs.fromJson(Map<String, dynamic> json) =>
      _$GraphsFromJson(json);
}

// Digestion Chart
@freezed
class DigestionChart with _$DigestionChart {
  const factory DigestionChart({
    @Default([]) List<DateValue> daily,
    @Default([]) List<WeekValue> weekly,
    @JsonKey(name: 'weekly_mood') @Default(WeeklyMood()) WeeklyMood weeklyMood,
  }) = _DigestionChart;

  factory DigestionChart.fromJson(Map<String, dynamic> json) =>
      _$DigestionChartFromJson(json);
}

@freezed
class DateValue with _$DateValue {
  const factory DateValue({
    @Default('') String date,
    @Default(0) int value,
  }) = _DateValue;

  factory DateValue.fromJson(Map<String, dynamic> json) =>
      _$DateValueFromJson(json);
}

@freezed
class WeekValue with _$WeekValue {
  const factory WeekValue({
    @Default('') String week,
    @Default(0) int value,
  }) = _WeekValue;

  factory WeekValue.fromJson(Map<String, dynamic> json) =>
      _$WeekValueFromJson(json);
}

@freezed
class WeeklyMood with _$WeeklyMood {
  const factory WeeklyMood({
    @Default([]) List<String> moods,
    @Default([]) List<String> days,
    @Default([]) List<int> values,
  }) = _WeeklyMood;

  factory WeeklyMood.fromJson(Map<String, dynamic> json) =>
      _$WeeklyMoodFromJson(json);
}

// Food Intake Pie
@freezed
class FoodIntakePie with _$FoodIntakePie {
  const factory FoodIntakePie({
    @Default('') String meal,
    @Default(0) int percentage,
    @Default(0) int calories,
  }) = _FoodIntakePie;

  factory FoodIntakePie.fromJson(Map<String, dynamic> json) =>
      _$FoodIntakePieFromJson(json);
}

// Micronutrient Bar
@freezed
class MicronutrientBar with _$MicronutrientBar {
  const factory MicronutrientBar({
    @Default([]) List<int> days,
    @Default([]) List<int> values,
  }) = _MicronutrientBar;

  factory MicronutrientBar.fromJson(Map<String, dynamic> json) =>
      _$MicronutrientBarFromJson(json);
}

// Recommendation
@freezed
class Recommendation with _$Recommendation {
  const factory Recommendation({
    @Default('') String heading,
    @Default('') String image,
    @JsonKey(name: 'duration_in_days') @Default(0) int durationInDays,
    @JsonKey(name: 'diet_plan') @Default('') String dietPlan,
  }) = _Recommendation;

  factory Recommendation.fromJson(Map<String, dynamic> json) =>
      _$RecommendationFromJson(json);
}

// Category
@freezed
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    @Default('') String name,
    @Default('') String image,
    @Default('') String description,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}
