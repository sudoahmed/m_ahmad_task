// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeModelImpl _$$HomeModelImplFromJson(Map<String, dynamic> json) =>
    _$HomeModelImpl(
      dailyTargets: (json['daily_targets'] as List<dynamic>?)
              ?.map((e) => DailyTarget.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      graphs: json['graphs'] == null
          ? const Graphs()
          : Graphs.fromJson(json['graphs'] as Map<String, dynamic>),
      recommendations: (json['recommendations'] as List<dynamic>?)
              ?.map((e) => Recommendation.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$HomeModelImplToJson(_$HomeModelImpl instance) =>
    <String, dynamic>{
      'daily_targets': instance.dailyTargets,
      'graphs': instance.graphs,
      'recommendations': instance.recommendations,
      'categories': instance.categories,
    };

_$DailyTargetImpl _$$DailyTargetImplFromJson(Map<String, dynamic> json) =>
    _$DailyTargetImpl(
      name: json['name'] as String? ?? '',
      totalTarget: json['total_target'] ?? 0,
      achievedTarget: json['achieved_target'] ?? 0,
    );

Map<String, dynamic> _$$DailyTargetImplToJson(_$DailyTargetImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'total_target': instance.totalTarget,
      'achieved_target': instance.achievedTarget,
    };

_$GraphsImpl _$$GraphsImplFromJson(Map<String, dynamic> json) => _$GraphsImpl(
      digestionChart: json['digestion_chart'] == null
          ? const DigestionChart()
          : DigestionChart.fromJson(
              json['digestion_chart'] as Map<String, dynamic>),
      foodIntakePie: (json['food_intake_pie'] as List<dynamic>?)
              ?.map((e) => FoodIntakePie.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      waterIntake: (json['water_intake'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      micronutrientBar: json['micronutrient_bar'] == null
          ? const MicronutrientBar()
          : MicronutrientBar.fromJson(
              json['micronutrient_bar'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GraphsImplToJson(_$GraphsImpl instance) =>
    <String, dynamic>{
      'digestion_chart': instance.digestionChart,
      'food_intake_pie': instance.foodIntakePie,
      'water_intake': instance.waterIntake,
      'micronutrient_bar': instance.micronutrientBar,
    };

_$DigestionChartImpl _$$DigestionChartImplFromJson(Map<String, dynamic> json) =>
    _$DigestionChartImpl(
      daily: (json['daily'] as List<dynamic>?)
              ?.map((e) => DateValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      weekly: (json['weekly'] as List<dynamic>?)
              ?.map((e) => WeekValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      weeklyMood: json['weekly_mood'] == null
          ? const WeeklyMood()
          : WeeklyMood.fromJson(json['weekly_mood'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DigestionChartImplToJson(
        _$DigestionChartImpl instance) =>
    <String, dynamic>{
      'daily': instance.daily,
      'weekly': instance.weekly,
      'weekly_mood': instance.weeklyMood,
    };

_$DateValueImpl _$$DateValueImplFromJson(Map<String, dynamic> json) =>
    _$DateValueImpl(
      date: json['date'] as String? ?? '',
      value: (json['value'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$DateValueImplToJson(_$DateValueImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'value': instance.value,
    };

_$WeekValueImpl _$$WeekValueImplFromJson(Map<String, dynamic> json) =>
    _$WeekValueImpl(
      week: json['week'] as String? ?? '',
      value: (json['value'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$WeekValueImplToJson(_$WeekValueImpl instance) =>
    <String, dynamic>{
      'week': instance.week,
      'value': instance.value,
    };

_$WeeklyMoodImpl _$$WeeklyMoodImplFromJson(Map<String, dynamic> json) =>
    _$WeeklyMoodImpl(
      moods:
          (json['moods'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      days:
          (json['days'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      values: (json['values'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$WeeklyMoodImplToJson(_$WeeklyMoodImpl instance) =>
    <String, dynamic>{
      'moods': instance.moods,
      'days': instance.days,
      'values': instance.values,
    };

_$FoodIntakePieImpl _$$FoodIntakePieImplFromJson(Map<String, dynamic> json) =>
    _$FoodIntakePieImpl(
      meal: json['meal'] as String? ?? '',
      percentage: (json['percentage'] as num?)?.toInt() ?? 0,
      calories: (json['calories'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$FoodIntakePieImplToJson(_$FoodIntakePieImpl instance) =>
    <String, dynamic>{
      'meal': instance.meal,
      'percentage': instance.percentage,
      'calories': instance.calories,
    };

_$MicronutrientBarImpl _$$MicronutrientBarImplFromJson(
        Map<String, dynamic> json) =>
    _$MicronutrientBarImpl(
      days: (json['days'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
      values: (json['values'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$MicronutrientBarImplToJson(
        _$MicronutrientBarImpl instance) =>
    <String, dynamic>{
      'days': instance.days,
      'values': instance.values,
    };

_$RecommendationImpl _$$RecommendationImplFromJson(Map<String, dynamic> json) =>
    _$RecommendationImpl(
      heading: json['heading'] as String? ?? '',
      image: json['image'] as String? ?? '',
      durationInDays: (json['duration_in_days'] as num?)?.toInt() ?? 0,
      dietPlan: json['diet_plan'] as String? ?? '',
    );

Map<String, dynamic> _$$RecommendationImplToJson(
        _$RecommendationImpl instance) =>
    <String, dynamic>{
      'heading': instance.heading,
      'image': instance.image,
      'duration_in_days': instance.durationInDays,
      'diet_plan': instance.dietPlan,
    };

_$CategoryModelImpl _$$CategoryModelImplFromJson(Map<String, dynamic> json) =>
    _$CategoryModelImpl(
      name: json['name'] as String? ?? '',
      image: json['image'] as String? ?? '',
      description: json['description'] as String? ?? '',
    );

Map<String, dynamic> _$$CategoryModelImplToJson(_$CategoryModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
      'description': instance.description,
    };
