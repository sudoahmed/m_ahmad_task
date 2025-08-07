

class WeeklyMood {
  final Map<String, int> dailyMoods;

  WeeklyMood({required this.dailyMoods});
}



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
