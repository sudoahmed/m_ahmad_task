// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) {
  return _HomeModel.fromJson(json);
}

/// @nodoc
mixin _$HomeModel {
  @JsonKey(name: 'daily_targets')
  List<DailyTarget> get dailyTargets => throw _privateConstructorUsedError;
  Graphs get graphs => throw _privateConstructorUsedError;
  List<Recommendation> get recommendations =>
      throw _privateConstructorUsedError;
  List<CategoryModel> get categories => throw _privateConstructorUsedError;

  /// Serializes this HomeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeModelCopyWith<HomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeModelCopyWith<$Res> {
  factory $HomeModelCopyWith(HomeModel value, $Res Function(HomeModel) then) =
      _$HomeModelCopyWithImpl<$Res, HomeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'daily_targets') List<DailyTarget> dailyTargets,
      Graphs graphs,
      List<Recommendation> recommendations,
      List<CategoryModel> categories});

  $GraphsCopyWith<$Res> get graphs;
}

/// @nodoc
class _$HomeModelCopyWithImpl<$Res, $Val extends HomeModel>
    implements $HomeModelCopyWith<$Res> {
  _$HomeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dailyTargets = null,
    Object? graphs = null,
    Object? recommendations = null,
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      dailyTargets: null == dailyTargets
          ? _value.dailyTargets
          : dailyTargets // ignore: cast_nullable_to_non_nullable
              as List<DailyTarget>,
      graphs: null == graphs
          ? _value.graphs
          : graphs // ignore: cast_nullable_to_non_nullable
              as Graphs,
      recommendations: null == recommendations
          ? _value.recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as List<Recommendation>,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
    ) as $Val);
  }

  /// Create a copy of HomeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GraphsCopyWith<$Res> get graphs {
    return $GraphsCopyWith<$Res>(_value.graphs, (value) {
      return _then(_value.copyWith(graphs: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeModelImplCopyWith<$Res>
    implements $HomeModelCopyWith<$Res> {
  factory _$$HomeModelImplCopyWith(
          _$HomeModelImpl value, $Res Function(_$HomeModelImpl) then) =
      __$$HomeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'daily_targets') List<DailyTarget> dailyTargets,
      Graphs graphs,
      List<Recommendation> recommendations,
      List<CategoryModel> categories});

  @override
  $GraphsCopyWith<$Res> get graphs;
}

/// @nodoc
class __$$HomeModelImplCopyWithImpl<$Res>
    extends _$HomeModelCopyWithImpl<$Res, _$HomeModelImpl>
    implements _$$HomeModelImplCopyWith<$Res> {
  __$$HomeModelImplCopyWithImpl(
      _$HomeModelImpl _value, $Res Function(_$HomeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dailyTargets = null,
    Object? graphs = null,
    Object? recommendations = null,
    Object? categories = null,
  }) {
    return _then(_$HomeModelImpl(
      dailyTargets: null == dailyTargets
          ? _value._dailyTargets
          : dailyTargets // ignore: cast_nullable_to_non_nullable
              as List<DailyTarget>,
      graphs: null == graphs
          ? _value.graphs
          : graphs // ignore: cast_nullable_to_non_nullable
              as Graphs,
      recommendations: null == recommendations
          ? _value._recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as List<Recommendation>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeModelImpl implements _HomeModel {
  const _$HomeModelImpl(
      {@JsonKey(name: 'daily_targets')
      final List<DailyTarget> dailyTargets = const [],
      this.graphs = const Graphs(),
      final List<Recommendation> recommendations = const [],
      final List<CategoryModel> categories = const []})
      : _dailyTargets = dailyTargets,
        _recommendations = recommendations,
        _categories = categories;

  factory _$HomeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeModelImplFromJson(json);

  final List<DailyTarget> _dailyTargets;
  @override
  @JsonKey(name: 'daily_targets')
  List<DailyTarget> get dailyTargets {
    if (_dailyTargets is EqualUnmodifiableListView) return _dailyTargets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dailyTargets);
  }

  @override
  @JsonKey()
  final Graphs graphs;
  final List<Recommendation> _recommendations;
  @override
  @JsonKey()
  List<Recommendation> get recommendations {
    if (_recommendations is EqualUnmodifiableListView) return _recommendations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recommendations);
  }

  final List<CategoryModel> _categories;
  @override
  @JsonKey()
  List<CategoryModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'HomeModel(dailyTargets: $dailyTargets, graphs: $graphs, recommendations: $recommendations, categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeModelImpl &&
            const DeepCollectionEquality()
                .equals(other._dailyTargets, _dailyTargets) &&
            (identical(other.graphs, graphs) || other.graphs == graphs) &&
            const DeepCollectionEquality()
                .equals(other._recommendations, _recommendations) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_dailyTargets),
      graphs,
      const DeepCollectionEquality().hash(_recommendations),
      const DeepCollectionEquality().hash(_categories));

  /// Create a copy of HomeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeModelImplCopyWith<_$HomeModelImpl> get copyWith =>
      __$$HomeModelImplCopyWithImpl<_$HomeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeModelImplToJson(
      this,
    );
  }
}

abstract class _HomeModel implements HomeModel {
  const factory _HomeModel(
      {@JsonKey(name: 'daily_targets') final List<DailyTarget> dailyTargets,
      final Graphs graphs,
      final List<Recommendation> recommendations,
      final List<CategoryModel> categories}) = _$HomeModelImpl;

  factory _HomeModel.fromJson(Map<String, dynamic> json) =
      _$HomeModelImpl.fromJson;

  @override
  @JsonKey(name: 'daily_targets')
  List<DailyTarget> get dailyTargets;
  @override
  Graphs get graphs;
  @override
  List<Recommendation> get recommendations;
  @override
  List<CategoryModel> get categories;

  /// Create a copy of HomeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeModelImplCopyWith<_$HomeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DailyTarget _$DailyTargetFromJson(Map<String, dynamic> json) {
  return _DailyTarget.fromJson(json);
}

/// @nodoc
mixin _$DailyTarget {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_target')
  dynamic get totalTarget => throw _privateConstructorUsedError;
  @JsonKey(name: 'achieved_target')
  dynamic get achievedTarget => throw _privateConstructorUsedError;

  /// Serializes this DailyTarget to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DailyTarget
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyTargetCopyWith<DailyTarget> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyTargetCopyWith<$Res> {
  factory $DailyTargetCopyWith(
          DailyTarget value, $Res Function(DailyTarget) then) =
      _$DailyTargetCopyWithImpl<$Res, DailyTarget>;
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: 'total_target') dynamic totalTarget,
      @JsonKey(name: 'achieved_target') dynamic achievedTarget});
}

/// @nodoc
class _$DailyTargetCopyWithImpl<$Res, $Val extends DailyTarget>
    implements $DailyTargetCopyWith<$Res> {
  _$DailyTargetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailyTarget
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? totalTarget = freezed,
    Object? achievedTarget = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      totalTarget: freezed == totalTarget
          ? _value.totalTarget
          : totalTarget // ignore: cast_nullable_to_non_nullable
              as dynamic,
      achievedTarget: freezed == achievedTarget
          ? _value.achievedTarget
          : achievedTarget // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyTargetImplCopyWith<$Res>
    implements $DailyTargetCopyWith<$Res> {
  factory _$$DailyTargetImplCopyWith(
          _$DailyTargetImpl value, $Res Function(_$DailyTargetImpl) then) =
      __$$DailyTargetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: 'total_target') dynamic totalTarget,
      @JsonKey(name: 'achieved_target') dynamic achievedTarget});
}

/// @nodoc
class __$$DailyTargetImplCopyWithImpl<$Res>
    extends _$DailyTargetCopyWithImpl<$Res, _$DailyTargetImpl>
    implements _$$DailyTargetImplCopyWith<$Res> {
  __$$DailyTargetImplCopyWithImpl(
      _$DailyTargetImpl _value, $Res Function(_$DailyTargetImpl) _then)
      : super(_value, _then);

  /// Create a copy of DailyTarget
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? totalTarget = freezed,
    Object? achievedTarget = freezed,
  }) {
    return _then(_$DailyTargetImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      totalTarget: freezed == totalTarget
          ? _value.totalTarget
          : totalTarget // ignore: cast_nullable_to_non_nullable
              as dynamic,
      achievedTarget: freezed == achievedTarget
          ? _value.achievedTarget
          : achievedTarget // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyTargetImpl implements _DailyTarget {
  const _$DailyTargetImpl(
      {this.name = '',
      @JsonKey(name: 'total_target') this.totalTarget = 0,
      @JsonKey(name: 'achieved_target') this.achievedTarget = 0});

  factory _$DailyTargetImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyTargetImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey(name: 'total_target')
  final dynamic totalTarget;
  @override
  @JsonKey(name: 'achieved_target')
  final dynamic achievedTarget;

  @override
  String toString() {
    return 'DailyTarget(name: $name, totalTarget: $totalTarget, achievedTarget: $achievedTarget)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyTargetImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other.totalTarget, totalTarget) &&
            const DeepCollectionEquality()
                .equals(other.achievedTarget, achievedTarget));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(totalTarget),
      const DeepCollectionEquality().hash(achievedTarget));

  /// Create a copy of DailyTarget
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyTargetImplCopyWith<_$DailyTargetImpl> get copyWith =>
      __$$DailyTargetImplCopyWithImpl<_$DailyTargetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyTargetImplToJson(
      this,
    );
  }
}

abstract class _DailyTarget implements DailyTarget {
  const factory _DailyTarget(
          {final String name,
          @JsonKey(name: 'total_target') final dynamic totalTarget,
          @JsonKey(name: 'achieved_target') final dynamic achievedTarget}) =
      _$DailyTargetImpl;

  factory _DailyTarget.fromJson(Map<String, dynamic> json) =
      _$DailyTargetImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: 'total_target')
  dynamic get totalTarget;
  @override
  @JsonKey(name: 'achieved_target')
  dynamic get achievedTarget;

  /// Create a copy of DailyTarget
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyTargetImplCopyWith<_$DailyTargetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Graphs _$GraphsFromJson(Map<String, dynamic> json) {
  return _Graphs.fromJson(json);
}

/// @nodoc
mixin _$Graphs {
  @JsonKey(name: 'digestion_chart')
  DigestionChart get digestionChart => throw _privateConstructorUsedError;
  @JsonKey(name: 'food_intake_pie')
  List<FoodIntakePie> get foodIntakePie => throw _privateConstructorUsedError;
  @JsonKey(name: 'water_intake')
  List<String> get waterIntake => throw _privateConstructorUsedError;
  @JsonKey(name: 'micronutrient_bar')
  MicronutrientBar get micronutrientBar => throw _privateConstructorUsedError;

  /// Serializes this Graphs to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Graphs
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GraphsCopyWith<Graphs> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GraphsCopyWith<$Res> {
  factory $GraphsCopyWith(Graphs value, $Res Function(Graphs) then) =
      _$GraphsCopyWithImpl<$Res, Graphs>;
  @useResult
  $Res call(
      {@JsonKey(name: 'digestion_chart') DigestionChart digestionChart,
      @JsonKey(name: 'food_intake_pie') List<FoodIntakePie> foodIntakePie,
      @JsonKey(name: 'water_intake') List<String> waterIntake,
      @JsonKey(name: 'micronutrient_bar') MicronutrientBar micronutrientBar});

  $DigestionChartCopyWith<$Res> get digestionChart;
  $MicronutrientBarCopyWith<$Res> get micronutrientBar;
}

/// @nodoc
class _$GraphsCopyWithImpl<$Res, $Val extends Graphs>
    implements $GraphsCopyWith<$Res> {
  _$GraphsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Graphs
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? digestionChart = null,
    Object? foodIntakePie = null,
    Object? waterIntake = null,
    Object? micronutrientBar = null,
  }) {
    return _then(_value.copyWith(
      digestionChart: null == digestionChart
          ? _value.digestionChart
          : digestionChart // ignore: cast_nullable_to_non_nullable
              as DigestionChart,
      foodIntakePie: null == foodIntakePie
          ? _value.foodIntakePie
          : foodIntakePie // ignore: cast_nullable_to_non_nullable
              as List<FoodIntakePie>,
      waterIntake: null == waterIntake
          ? _value.waterIntake
          : waterIntake // ignore: cast_nullable_to_non_nullable
              as List<String>,
      micronutrientBar: null == micronutrientBar
          ? _value.micronutrientBar
          : micronutrientBar // ignore: cast_nullable_to_non_nullable
              as MicronutrientBar,
    ) as $Val);
  }

  /// Create a copy of Graphs
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DigestionChartCopyWith<$Res> get digestionChart {
    return $DigestionChartCopyWith<$Res>(_value.digestionChart, (value) {
      return _then(_value.copyWith(digestionChart: value) as $Val);
    });
  }

  /// Create a copy of Graphs
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MicronutrientBarCopyWith<$Res> get micronutrientBar {
    return $MicronutrientBarCopyWith<$Res>(_value.micronutrientBar, (value) {
      return _then(_value.copyWith(micronutrientBar: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GraphsImplCopyWith<$Res> implements $GraphsCopyWith<$Res> {
  factory _$$GraphsImplCopyWith(
          _$GraphsImpl value, $Res Function(_$GraphsImpl) then) =
      __$$GraphsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'digestion_chart') DigestionChart digestionChart,
      @JsonKey(name: 'food_intake_pie') List<FoodIntakePie> foodIntakePie,
      @JsonKey(name: 'water_intake') List<String> waterIntake,
      @JsonKey(name: 'micronutrient_bar') MicronutrientBar micronutrientBar});

  @override
  $DigestionChartCopyWith<$Res> get digestionChart;
  @override
  $MicronutrientBarCopyWith<$Res> get micronutrientBar;
}

/// @nodoc
class __$$GraphsImplCopyWithImpl<$Res>
    extends _$GraphsCopyWithImpl<$Res, _$GraphsImpl>
    implements _$$GraphsImplCopyWith<$Res> {
  __$$GraphsImplCopyWithImpl(
      _$GraphsImpl _value, $Res Function(_$GraphsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Graphs
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? digestionChart = null,
    Object? foodIntakePie = null,
    Object? waterIntake = null,
    Object? micronutrientBar = null,
  }) {
    return _then(_$GraphsImpl(
      digestionChart: null == digestionChart
          ? _value.digestionChart
          : digestionChart // ignore: cast_nullable_to_non_nullable
              as DigestionChart,
      foodIntakePie: null == foodIntakePie
          ? _value._foodIntakePie
          : foodIntakePie // ignore: cast_nullable_to_non_nullable
              as List<FoodIntakePie>,
      waterIntake: null == waterIntake
          ? _value._waterIntake
          : waterIntake // ignore: cast_nullable_to_non_nullable
              as List<String>,
      micronutrientBar: null == micronutrientBar
          ? _value.micronutrientBar
          : micronutrientBar // ignore: cast_nullable_to_non_nullable
              as MicronutrientBar,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GraphsImpl implements _Graphs {
  const _$GraphsImpl(
      {@JsonKey(name: 'digestion_chart')
      this.digestionChart = const DigestionChart(),
      @JsonKey(name: 'food_intake_pie')
      final List<FoodIntakePie> foodIntakePie = const [],
      @JsonKey(name: 'water_intake') final List<String> waterIntake = const [],
      @JsonKey(name: 'micronutrient_bar')
      this.micronutrientBar = const MicronutrientBar()})
      : _foodIntakePie = foodIntakePie,
        _waterIntake = waterIntake;

  factory _$GraphsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GraphsImplFromJson(json);

  @override
  @JsonKey(name: 'digestion_chart')
  final DigestionChart digestionChart;
  final List<FoodIntakePie> _foodIntakePie;
  @override
  @JsonKey(name: 'food_intake_pie')
  List<FoodIntakePie> get foodIntakePie {
    if (_foodIntakePie is EqualUnmodifiableListView) return _foodIntakePie;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_foodIntakePie);
  }

  final List<String> _waterIntake;
  @override
  @JsonKey(name: 'water_intake')
  List<String> get waterIntake {
    if (_waterIntake is EqualUnmodifiableListView) return _waterIntake;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_waterIntake);
  }

  @override
  @JsonKey(name: 'micronutrient_bar')
  final MicronutrientBar micronutrientBar;

  @override
  String toString() {
    return 'Graphs(digestionChart: $digestionChart, foodIntakePie: $foodIntakePie, waterIntake: $waterIntake, micronutrientBar: $micronutrientBar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GraphsImpl &&
            (identical(other.digestionChart, digestionChart) ||
                other.digestionChart == digestionChart) &&
            const DeepCollectionEquality()
                .equals(other._foodIntakePie, _foodIntakePie) &&
            const DeepCollectionEquality()
                .equals(other._waterIntake, _waterIntake) &&
            (identical(other.micronutrientBar, micronutrientBar) ||
                other.micronutrientBar == micronutrientBar));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      digestionChart,
      const DeepCollectionEquality().hash(_foodIntakePie),
      const DeepCollectionEquality().hash(_waterIntake),
      micronutrientBar);

  /// Create a copy of Graphs
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GraphsImplCopyWith<_$GraphsImpl> get copyWith =>
      __$$GraphsImplCopyWithImpl<_$GraphsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GraphsImplToJson(
      this,
    );
  }
}

abstract class _Graphs implements Graphs {
  const factory _Graphs(
      {@JsonKey(name: 'digestion_chart') final DigestionChart digestionChart,
      @JsonKey(name: 'food_intake_pie') final List<FoodIntakePie> foodIntakePie,
      @JsonKey(name: 'water_intake') final List<String> waterIntake,
      @JsonKey(name: 'micronutrient_bar')
      final MicronutrientBar micronutrientBar}) = _$GraphsImpl;

  factory _Graphs.fromJson(Map<String, dynamic> json) = _$GraphsImpl.fromJson;

  @override
  @JsonKey(name: 'digestion_chart')
  DigestionChart get digestionChart;
  @override
  @JsonKey(name: 'food_intake_pie')
  List<FoodIntakePie> get foodIntakePie;
  @override
  @JsonKey(name: 'water_intake')
  List<String> get waterIntake;
  @override
  @JsonKey(name: 'micronutrient_bar')
  MicronutrientBar get micronutrientBar;

  /// Create a copy of Graphs
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GraphsImplCopyWith<_$GraphsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DigestionChart _$DigestionChartFromJson(Map<String, dynamic> json) {
  return _DigestionChart.fromJson(json);
}

/// @nodoc
mixin _$DigestionChart {
  List<DateValue> get daily => throw _privateConstructorUsedError;
  List<WeekValue> get weekly => throw _privateConstructorUsedError;
  @JsonKey(name: 'weekly_mood')
  WeeklyMood get weeklyMood => throw _privateConstructorUsedError;

  /// Serializes this DigestionChart to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DigestionChart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DigestionChartCopyWith<DigestionChart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DigestionChartCopyWith<$Res> {
  factory $DigestionChartCopyWith(
          DigestionChart value, $Res Function(DigestionChart) then) =
      _$DigestionChartCopyWithImpl<$Res, DigestionChart>;
  @useResult
  $Res call(
      {List<DateValue> daily,
      List<WeekValue> weekly,
      @JsonKey(name: 'weekly_mood') WeeklyMood weeklyMood});

  $WeeklyMoodCopyWith<$Res> get weeklyMood;
}

/// @nodoc
class _$DigestionChartCopyWithImpl<$Res, $Val extends DigestionChart>
    implements $DigestionChartCopyWith<$Res> {
  _$DigestionChartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DigestionChart
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? daily = null,
    Object? weekly = null,
    Object? weeklyMood = null,
  }) {
    return _then(_value.copyWith(
      daily: null == daily
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as List<DateValue>,
      weekly: null == weekly
          ? _value.weekly
          : weekly // ignore: cast_nullable_to_non_nullable
              as List<WeekValue>,
      weeklyMood: null == weeklyMood
          ? _value.weeklyMood
          : weeklyMood // ignore: cast_nullable_to_non_nullable
              as WeeklyMood,
    ) as $Val);
  }

  /// Create a copy of DigestionChart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeeklyMoodCopyWith<$Res> get weeklyMood {
    return $WeeklyMoodCopyWith<$Res>(_value.weeklyMood, (value) {
      return _then(_value.copyWith(weeklyMood: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DigestionChartImplCopyWith<$Res>
    implements $DigestionChartCopyWith<$Res> {
  factory _$$DigestionChartImplCopyWith(_$DigestionChartImpl value,
          $Res Function(_$DigestionChartImpl) then) =
      __$$DigestionChartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DateValue> daily,
      List<WeekValue> weekly,
      @JsonKey(name: 'weekly_mood') WeeklyMood weeklyMood});

  @override
  $WeeklyMoodCopyWith<$Res> get weeklyMood;
}

/// @nodoc
class __$$DigestionChartImplCopyWithImpl<$Res>
    extends _$DigestionChartCopyWithImpl<$Res, _$DigestionChartImpl>
    implements _$$DigestionChartImplCopyWith<$Res> {
  __$$DigestionChartImplCopyWithImpl(
      _$DigestionChartImpl _value, $Res Function(_$DigestionChartImpl) _then)
      : super(_value, _then);

  /// Create a copy of DigestionChart
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? daily = null,
    Object? weekly = null,
    Object? weeklyMood = null,
  }) {
    return _then(_$DigestionChartImpl(
      daily: null == daily
          ? _value._daily
          : daily // ignore: cast_nullable_to_non_nullable
              as List<DateValue>,
      weekly: null == weekly
          ? _value._weekly
          : weekly // ignore: cast_nullable_to_non_nullable
              as List<WeekValue>,
      weeklyMood: null == weeklyMood
          ? _value.weeklyMood
          : weeklyMood // ignore: cast_nullable_to_non_nullable
              as WeeklyMood,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DigestionChartImpl implements _DigestionChart {
  const _$DigestionChartImpl(
      {final List<DateValue> daily = const [],
      final List<WeekValue> weekly = const [],
      @JsonKey(name: 'weekly_mood') this.weeklyMood = const WeeklyMood()})
      : _daily = daily,
        _weekly = weekly;

  factory _$DigestionChartImpl.fromJson(Map<String, dynamic> json) =>
      _$$DigestionChartImplFromJson(json);

  final List<DateValue> _daily;
  @override
  @JsonKey()
  List<DateValue> get daily {
    if (_daily is EqualUnmodifiableListView) return _daily;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_daily);
  }

  final List<WeekValue> _weekly;
  @override
  @JsonKey()
  List<WeekValue> get weekly {
    if (_weekly is EqualUnmodifiableListView) return _weekly;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weekly);
  }

  @override
  @JsonKey(name: 'weekly_mood')
  final WeeklyMood weeklyMood;

  @override
  String toString() {
    return 'DigestionChart(daily: $daily, weekly: $weekly, weeklyMood: $weeklyMood)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DigestionChartImpl &&
            const DeepCollectionEquality().equals(other._daily, _daily) &&
            const DeepCollectionEquality().equals(other._weekly, _weekly) &&
            (identical(other.weeklyMood, weeklyMood) ||
                other.weeklyMood == weeklyMood));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_daily),
      const DeepCollectionEquality().hash(_weekly),
      weeklyMood);

  /// Create a copy of DigestionChart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DigestionChartImplCopyWith<_$DigestionChartImpl> get copyWith =>
      __$$DigestionChartImplCopyWithImpl<_$DigestionChartImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DigestionChartImplToJson(
      this,
    );
  }
}

abstract class _DigestionChart implements DigestionChart {
  const factory _DigestionChart(
          {final List<DateValue> daily,
          final List<WeekValue> weekly,
          @JsonKey(name: 'weekly_mood') final WeeklyMood weeklyMood}) =
      _$DigestionChartImpl;

  factory _DigestionChart.fromJson(Map<String, dynamic> json) =
      _$DigestionChartImpl.fromJson;

  @override
  List<DateValue> get daily;
  @override
  List<WeekValue> get weekly;
  @override
  @JsonKey(name: 'weekly_mood')
  WeeklyMood get weeklyMood;

  /// Create a copy of DigestionChart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DigestionChartImplCopyWith<_$DigestionChartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DateValue _$DateValueFromJson(Map<String, dynamic> json) {
  return _DateValue.fromJson(json);
}

/// @nodoc
mixin _$DateValue {
  String get date => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;

  /// Serializes this DateValue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DateValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DateValueCopyWith<DateValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateValueCopyWith<$Res> {
  factory $DateValueCopyWith(DateValue value, $Res Function(DateValue) then) =
      _$DateValueCopyWithImpl<$Res, DateValue>;
  @useResult
  $Res call({String date, int value});
}

/// @nodoc
class _$DateValueCopyWithImpl<$Res, $Val extends DateValue>
    implements $DateValueCopyWith<$Res> {
  _$DateValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DateValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DateValueImplCopyWith<$Res>
    implements $DateValueCopyWith<$Res> {
  factory _$$DateValueImplCopyWith(
          _$DateValueImpl value, $Res Function(_$DateValueImpl) then) =
      __$$DateValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, int value});
}

/// @nodoc
class __$$DateValueImplCopyWithImpl<$Res>
    extends _$DateValueCopyWithImpl<$Res, _$DateValueImpl>
    implements _$$DateValueImplCopyWith<$Res> {
  __$$DateValueImplCopyWithImpl(
      _$DateValueImpl _value, $Res Function(_$DateValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of DateValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? value = null,
  }) {
    return _then(_$DateValueImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DateValueImpl implements _DateValue {
  const _$DateValueImpl({this.date = '', this.value = 0});

  factory _$DateValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$DateValueImplFromJson(json);

  @override
  @JsonKey()
  final String date;
  @override
  @JsonKey()
  final int value;

  @override
  String toString() {
    return 'DateValue(date: $date, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateValueImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, value);

  /// Create a copy of DateValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DateValueImplCopyWith<_$DateValueImpl> get copyWith =>
      __$$DateValueImplCopyWithImpl<_$DateValueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DateValueImplToJson(
      this,
    );
  }
}

abstract class _DateValue implements DateValue {
  const factory _DateValue({final String date, final int value}) =
      _$DateValueImpl;

  factory _DateValue.fromJson(Map<String, dynamic> json) =
      _$DateValueImpl.fromJson;

  @override
  String get date;
  @override
  int get value;

  /// Create a copy of DateValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DateValueImplCopyWith<_$DateValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeekValue _$WeekValueFromJson(Map<String, dynamic> json) {
  return _WeekValue.fromJson(json);
}

/// @nodoc
mixin _$WeekValue {
  String get week => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;

  /// Serializes this WeekValue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeekValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeekValueCopyWith<WeekValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeekValueCopyWith<$Res> {
  factory $WeekValueCopyWith(WeekValue value, $Res Function(WeekValue) then) =
      _$WeekValueCopyWithImpl<$Res, WeekValue>;
  @useResult
  $Res call({String week, int value});
}

/// @nodoc
class _$WeekValueCopyWithImpl<$Res, $Val extends WeekValue>
    implements $WeekValueCopyWith<$Res> {
  _$WeekValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeekValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? week = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      week: null == week
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeekValueImplCopyWith<$Res>
    implements $WeekValueCopyWith<$Res> {
  factory _$$WeekValueImplCopyWith(
          _$WeekValueImpl value, $Res Function(_$WeekValueImpl) then) =
      __$$WeekValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String week, int value});
}

/// @nodoc
class __$$WeekValueImplCopyWithImpl<$Res>
    extends _$WeekValueCopyWithImpl<$Res, _$WeekValueImpl>
    implements _$$WeekValueImplCopyWith<$Res> {
  __$$WeekValueImplCopyWithImpl(
      _$WeekValueImpl _value, $Res Function(_$WeekValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeekValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? week = null,
    Object? value = null,
  }) {
    return _then(_$WeekValueImpl(
      week: null == week
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeekValueImpl implements _WeekValue {
  const _$WeekValueImpl({this.week = '', this.value = 0});

  factory _$WeekValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeekValueImplFromJson(json);

  @override
  @JsonKey()
  final String week;
  @override
  @JsonKey()
  final int value;

  @override
  String toString() {
    return 'WeekValue(week: $week, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeekValueImpl &&
            (identical(other.week, week) || other.week == week) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, week, value);

  /// Create a copy of WeekValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeekValueImplCopyWith<_$WeekValueImpl> get copyWith =>
      __$$WeekValueImplCopyWithImpl<_$WeekValueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeekValueImplToJson(
      this,
    );
  }
}

abstract class _WeekValue implements WeekValue {
  const factory _WeekValue({final String week, final int value}) =
      _$WeekValueImpl;

  factory _WeekValue.fromJson(Map<String, dynamic> json) =
      _$WeekValueImpl.fromJson;

  @override
  String get week;
  @override
  int get value;

  /// Create a copy of WeekValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeekValueImplCopyWith<_$WeekValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeeklyMood _$WeeklyMoodFromJson(Map<String, dynamic> json) {
  return _WeeklyMood.fromJson(json);
}

/// @nodoc
mixin _$WeeklyMood {
  List<String> get moods => throw _privateConstructorUsedError;
  List<String> get days => throw _privateConstructorUsedError;
  List<int> get values => throw _privateConstructorUsedError;

  /// Serializes this WeeklyMood to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeeklyMood
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeeklyMoodCopyWith<WeeklyMood> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeeklyMoodCopyWith<$Res> {
  factory $WeeklyMoodCopyWith(
          WeeklyMood value, $Res Function(WeeklyMood) then) =
      _$WeeklyMoodCopyWithImpl<$Res, WeeklyMood>;
  @useResult
  $Res call({List<String> moods, List<String> days, List<int> values});
}

/// @nodoc
class _$WeeklyMoodCopyWithImpl<$Res, $Val extends WeeklyMood>
    implements $WeeklyMoodCopyWith<$Res> {
  _$WeeklyMoodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeeklyMood
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? moods = null,
    Object? days = null,
    Object? values = null,
  }) {
    return _then(_value.copyWith(
      moods: null == moods
          ? _value.moods
          : moods // ignore: cast_nullable_to_non_nullable
              as List<String>,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as List<String>,
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeeklyMoodImplCopyWith<$Res>
    implements $WeeklyMoodCopyWith<$Res> {
  factory _$$WeeklyMoodImplCopyWith(
          _$WeeklyMoodImpl value, $Res Function(_$WeeklyMoodImpl) then) =
      __$$WeeklyMoodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> moods, List<String> days, List<int> values});
}

/// @nodoc
class __$$WeeklyMoodImplCopyWithImpl<$Res>
    extends _$WeeklyMoodCopyWithImpl<$Res, _$WeeklyMoodImpl>
    implements _$$WeeklyMoodImplCopyWith<$Res> {
  __$$WeeklyMoodImplCopyWithImpl(
      _$WeeklyMoodImpl _value, $Res Function(_$WeeklyMoodImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeeklyMood
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? moods = null,
    Object? days = null,
    Object? values = null,
  }) {
    return _then(_$WeeklyMoodImpl(
      moods: null == moods
          ? _value._moods
          : moods // ignore: cast_nullable_to_non_nullable
              as List<String>,
      days: null == days
          ? _value._days
          : days // ignore: cast_nullable_to_non_nullable
              as List<String>,
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeeklyMoodImpl implements _WeeklyMood {
  const _$WeeklyMoodImpl(
      {final List<String> moods = const [],
      final List<String> days = const [],
      final List<int> values = const []})
      : _moods = moods,
        _days = days,
        _values = values;

  factory _$WeeklyMoodImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeeklyMoodImplFromJson(json);

  final List<String> _moods;
  @override
  @JsonKey()
  List<String> get moods {
    if (_moods is EqualUnmodifiableListView) return _moods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_moods);
  }

  final List<String> _days;
  @override
  @JsonKey()
  List<String> get days {
    if (_days is EqualUnmodifiableListView) return _days;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_days);
  }

  final List<int> _values;
  @override
  @JsonKey()
  List<int> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  @override
  String toString() {
    return 'WeeklyMood(moods: $moods, days: $days, values: $values)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeeklyMoodImpl &&
            const DeepCollectionEquality().equals(other._moods, _moods) &&
            const DeepCollectionEquality().equals(other._days, _days) &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_moods),
      const DeepCollectionEquality().hash(_days),
      const DeepCollectionEquality().hash(_values));

  /// Create a copy of WeeklyMood
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeeklyMoodImplCopyWith<_$WeeklyMoodImpl> get copyWith =>
      __$$WeeklyMoodImplCopyWithImpl<_$WeeklyMoodImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeeklyMoodImplToJson(
      this,
    );
  }
}

abstract class _WeeklyMood implements WeeklyMood {
  const factory _WeeklyMood(
      {final List<String> moods,
      final List<String> days,
      final List<int> values}) = _$WeeklyMoodImpl;

  factory _WeeklyMood.fromJson(Map<String, dynamic> json) =
      _$WeeklyMoodImpl.fromJson;

  @override
  List<String> get moods;
  @override
  List<String> get days;
  @override
  List<int> get values;

  /// Create a copy of WeeklyMood
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeeklyMoodImplCopyWith<_$WeeklyMoodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FoodIntakePie _$FoodIntakePieFromJson(Map<String, dynamic> json) {
  return _FoodIntakePie.fromJson(json);
}

/// @nodoc
mixin _$FoodIntakePie {
  String get meal => throw _privateConstructorUsedError;
  int get percentage => throw _privateConstructorUsedError;
  int get calories => throw _privateConstructorUsedError;

  /// Serializes this FoodIntakePie to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FoodIntakePie
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FoodIntakePieCopyWith<FoodIntakePie> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodIntakePieCopyWith<$Res> {
  factory $FoodIntakePieCopyWith(
          FoodIntakePie value, $Res Function(FoodIntakePie) then) =
      _$FoodIntakePieCopyWithImpl<$Res, FoodIntakePie>;
  @useResult
  $Res call({String meal, int percentage, int calories});
}

/// @nodoc
class _$FoodIntakePieCopyWithImpl<$Res, $Val extends FoodIntakePie>
    implements $FoodIntakePieCopyWith<$Res> {
  _$FoodIntakePieCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FoodIntakePie
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meal = null,
    Object? percentage = null,
    Object? calories = null,
  }) {
    return _then(_value.copyWith(
      meal: null == meal
          ? _value.meal
          : meal // ignore: cast_nullable_to_non_nullable
              as String,
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as int,
      calories: null == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FoodIntakePieImplCopyWith<$Res>
    implements $FoodIntakePieCopyWith<$Res> {
  factory _$$FoodIntakePieImplCopyWith(
          _$FoodIntakePieImpl value, $Res Function(_$FoodIntakePieImpl) then) =
      __$$FoodIntakePieImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String meal, int percentage, int calories});
}

/// @nodoc
class __$$FoodIntakePieImplCopyWithImpl<$Res>
    extends _$FoodIntakePieCopyWithImpl<$Res, _$FoodIntakePieImpl>
    implements _$$FoodIntakePieImplCopyWith<$Res> {
  __$$FoodIntakePieImplCopyWithImpl(
      _$FoodIntakePieImpl _value, $Res Function(_$FoodIntakePieImpl) _then)
      : super(_value, _then);

  /// Create a copy of FoodIntakePie
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meal = null,
    Object? percentage = null,
    Object? calories = null,
  }) {
    return _then(_$FoodIntakePieImpl(
      meal: null == meal
          ? _value.meal
          : meal // ignore: cast_nullable_to_non_nullable
              as String,
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as int,
      calories: null == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FoodIntakePieImpl implements _FoodIntakePie {
  const _$FoodIntakePieImpl(
      {this.meal = '', this.percentage = 0, this.calories = 0});

  factory _$FoodIntakePieImpl.fromJson(Map<String, dynamic> json) =>
      _$$FoodIntakePieImplFromJson(json);

  @override
  @JsonKey()
  final String meal;
  @override
  @JsonKey()
  final int percentage;
  @override
  @JsonKey()
  final int calories;

  @override
  String toString() {
    return 'FoodIntakePie(meal: $meal, percentage: $percentage, calories: $calories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodIntakePieImpl &&
            (identical(other.meal, meal) || other.meal == meal) &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage) &&
            (identical(other.calories, calories) ||
                other.calories == calories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, meal, percentage, calories);

  /// Create a copy of FoodIntakePie
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FoodIntakePieImplCopyWith<_$FoodIntakePieImpl> get copyWith =>
      __$$FoodIntakePieImplCopyWithImpl<_$FoodIntakePieImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FoodIntakePieImplToJson(
      this,
    );
  }
}

abstract class _FoodIntakePie implements FoodIntakePie {
  const factory _FoodIntakePie(
      {final String meal,
      final int percentage,
      final int calories}) = _$FoodIntakePieImpl;

  factory _FoodIntakePie.fromJson(Map<String, dynamic> json) =
      _$FoodIntakePieImpl.fromJson;

  @override
  String get meal;
  @override
  int get percentage;
  @override
  int get calories;

  /// Create a copy of FoodIntakePie
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FoodIntakePieImplCopyWith<_$FoodIntakePieImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MicronutrientBar _$MicronutrientBarFromJson(Map<String, dynamic> json) {
  return _MicronutrientBar.fromJson(json);
}

/// @nodoc
mixin _$MicronutrientBar {
  List<int> get days => throw _privateConstructorUsedError;
  List<int> get values => throw _privateConstructorUsedError;

  /// Serializes this MicronutrientBar to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MicronutrientBar
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MicronutrientBarCopyWith<MicronutrientBar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MicronutrientBarCopyWith<$Res> {
  factory $MicronutrientBarCopyWith(
          MicronutrientBar value, $Res Function(MicronutrientBar) then) =
      _$MicronutrientBarCopyWithImpl<$Res, MicronutrientBar>;
  @useResult
  $Res call({List<int> days, List<int> values});
}

/// @nodoc
class _$MicronutrientBarCopyWithImpl<$Res, $Val extends MicronutrientBar>
    implements $MicronutrientBarCopyWith<$Res> {
  _$MicronutrientBarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MicronutrientBar
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? days = null,
    Object? values = null,
  }) {
    return _then(_value.copyWith(
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as List<int>,
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MicronutrientBarImplCopyWith<$Res>
    implements $MicronutrientBarCopyWith<$Res> {
  factory _$$MicronutrientBarImplCopyWith(_$MicronutrientBarImpl value,
          $Res Function(_$MicronutrientBarImpl) then) =
      __$$MicronutrientBarImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> days, List<int> values});
}

/// @nodoc
class __$$MicronutrientBarImplCopyWithImpl<$Res>
    extends _$MicronutrientBarCopyWithImpl<$Res, _$MicronutrientBarImpl>
    implements _$$MicronutrientBarImplCopyWith<$Res> {
  __$$MicronutrientBarImplCopyWithImpl(_$MicronutrientBarImpl _value,
      $Res Function(_$MicronutrientBarImpl) _then)
      : super(_value, _then);

  /// Create a copy of MicronutrientBar
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? days = null,
    Object? values = null,
  }) {
    return _then(_$MicronutrientBarImpl(
      days: null == days
          ? _value._days
          : days // ignore: cast_nullable_to_non_nullable
              as List<int>,
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MicronutrientBarImpl implements _MicronutrientBar {
  const _$MicronutrientBarImpl(
      {final List<int> days = const [], final List<int> values = const []})
      : _days = days,
        _values = values;

  factory _$MicronutrientBarImpl.fromJson(Map<String, dynamic> json) =>
      _$$MicronutrientBarImplFromJson(json);

  final List<int> _days;
  @override
  @JsonKey()
  List<int> get days {
    if (_days is EqualUnmodifiableListView) return _days;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_days);
  }

  final List<int> _values;
  @override
  @JsonKey()
  List<int> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  @override
  String toString() {
    return 'MicronutrientBar(days: $days, values: $values)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MicronutrientBarImpl &&
            const DeepCollectionEquality().equals(other._days, _days) &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_days),
      const DeepCollectionEquality().hash(_values));

  /// Create a copy of MicronutrientBar
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MicronutrientBarImplCopyWith<_$MicronutrientBarImpl> get copyWith =>
      __$$MicronutrientBarImplCopyWithImpl<_$MicronutrientBarImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MicronutrientBarImplToJson(
      this,
    );
  }
}

abstract class _MicronutrientBar implements MicronutrientBar {
  const factory _MicronutrientBar(
      {final List<int> days, final List<int> values}) = _$MicronutrientBarImpl;

  factory _MicronutrientBar.fromJson(Map<String, dynamic> json) =
      _$MicronutrientBarImpl.fromJson;

  @override
  List<int> get days;
  @override
  List<int> get values;

  /// Create a copy of MicronutrientBar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MicronutrientBarImplCopyWith<_$MicronutrientBarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Recommendation _$RecommendationFromJson(Map<String, dynamic> json) {
  return _Recommendation.fromJson(json);
}

/// @nodoc
mixin _$Recommendation {
  String get heading => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration_in_days')
  int get durationInDays => throw _privateConstructorUsedError;
  @JsonKey(name: 'diet_plan')
  String get dietPlan => throw _privateConstructorUsedError;

  /// Serializes this Recommendation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Recommendation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecommendationCopyWith<Recommendation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendationCopyWith<$Res> {
  factory $RecommendationCopyWith(
          Recommendation value, $Res Function(Recommendation) then) =
      _$RecommendationCopyWithImpl<$Res, Recommendation>;
  @useResult
  $Res call(
      {String heading,
      String image,
      @JsonKey(name: 'duration_in_days') int durationInDays,
      @JsonKey(name: 'diet_plan') String dietPlan});
}

/// @nodoc
class _$RecommendationCopyWithImpl<$Res, $Val extends Recommendation>
    implements $RecommendationCopyWith<$Res> {
  _$RecommendationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Recommendation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? heading = null,
    Object? image = null,
    Object? durationInDays = null,
    Object? dietPlan = null,
  }) {
    return _then(_value.copyWith(
      heading: null == heading
          ? _value.heading
          : heading // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      durationInDays: null == durationInDays
          ? _value.durationInDays
          : durationInDays // ignore: cast_nullable_to_non_nullable
              as int,
      dietPlan: null == dietPlan
          ? _value.dietPlan
          : dietPlan // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecommendationImplCopyWith<$Res>
    implements $RecommendationCopyWith<$Res> {
  factory _$$RecommendationImplCopyWith(_$RecommendationImpl value,
          $Res Function(_$RecommendationImpl) then) =
      __$$RecommendationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String heading,
      String image,
      @JsonKey(name: 'duration_in_days') int durationInDays,
      @JsonKey(name: 'diet_plan') String dietPlan});
}

/// @nodoc
class __$$RecommendationImplCopyWithImpl<$Res>
    extends _$RecommendationCopyWithImpl<$Res, _$RecommendationImpl>
    implements _$$RecommendationImplCopyWith<$Res> {
  __$$RecommendationImplCopyWithImpl(
      _$RecommendationImpl _value, $Res Function(_$RecommendationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Recommendation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? heading = null,
    Object? image = null,
    Object? durationInDays = null,
    Object? dietPlan = null,
  }) {
    return _then(_$RecommendationImpl(
      heading: null == heading
          ? _value.heading
          : heading // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      durationInDays: null == durationInDays
          ? _value.durationInDays
          : durationInDays // ignore: cast_nullable_to_non_nullable
              as int,
      dietPlan: null == dietPlan
          ? _value.dietPlan
          : dietPlan // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecommendationImpl implements _Recommendation {
  const _$RecommendationImpl(
      {this.heading = '',
      this.image = '',
      @JsonKey(name: 'duration_in_days') this.durationInDays = 0,
      @JsonKey(name: 'diet_plan') this.dietPlan = ''});

  factory _$RecommendationImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecommendationImplFromJson(json);

  @override
  @JsonKey()
  final String heading;
  @override
  @JsonKey()
  final String image;
  @override
  @JsonKey(name: 'duration_in_days')
  final int durationInDays;
  @override
  @JsonKey(name: 'diet_plan')
  final String dietPlan;

  @override
  String toString() {
    return 'Recommendation(heading: $heading, image: $image, durationInDays: $durationInDays, dietPlan: $dietPlan)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecommendationImpl &&
            (identical(other.heading, heading) || other.heading == heading) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.durationInDays, durationInDays) ||
                other.durationInDays == durationInDays) &&
            (identical(other.dietPlan, dietPlan) ||
                other.dietPlan == dietPlan));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, heading, image, durationInDays, dietPlan);

  /// Create a copy of Recommendation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecommendationImplCopyWith<_$RecommendationImpl> get copyWith =>
      __$$RecommendationImplCopyWithImpl<_$RecommendationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecommendationImplToJson(
      this,
    );
  }
}

abstract class _Recommendation implements Recommendation {
  const factory _Recommendation(
          {final String heading,
          final String image,
          @JsonKey(name: 'duration_in_days') final int durationInDays,
          @JsonKey(name: 'diet_plan') final String dietPlan}) =
      _$RecommendationImpl;

  factory _Recommendation.fromJson(Map<String, dynamic> json) =
      _$RecommendationImpl.fromJson;

  @override
  String get heading;
  @override
  String get image;
  @override
  @JsonKey(name: 'duration_in_days')
  int get durationInDays;
  @override
  @JsonKey(name: 'diet_plan')
  String get dietPlan;

  /// Create a copy of Recommendation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecommendationImplCopyWith<_$RecommendationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) {
  return _CategoryModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryModel {
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this CategoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryModelCopyWith<CategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryModelCopyWith<$Res> {
  factory $CategoryModelCopyWith(
          CategoryModel value, $Res Function(CategoryModel) then) =
      _$CategoryModelCopyWithImpl<$Res, CategoryModel>;
  @useResult
  $Res call({String name, String image, String description});
}

/// @nodoc
class _$CategoryModelCopyWithImpl<$Res, $Val extends CategoryModel>
    implements $CategoryModelCopyWith<$Res> {
  _$CategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? image = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryModelImplCopyWith<$Res>
    implements $CategoryModelCopyWith<$Res> {
  factory _$$CategoryModelImplCopyWith(
          _$CategoryModelImpl value, $Res Function(_$CategoryModelImpl) then) =
      __$$CategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String image, String description});
}

/// @nodoc
class __$$CategoryModelImplCopyWithImpl<$Res>
    extends _$CategoryModelCopyWithImpl<$Res, _$CategoryModelImpl>
    implements _$$CategoryModelImplCopyWith<$Res> {
  __$$CategoryModelImplCopyWithImpl(
      _$CategoryModelImpl _value, $Res Function(_$CategoryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? image = null,
    Object? description = null,
  }) {
    return _then(_$CategoryModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryModelImpl implements _CategoryModel {
  const _$CategoryModelImpl(
      {this.name = '', this.image = '', this.description = ''});

  factory _$CategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryModelImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String image;
  @override
  @JsonKey()
  final String description;

  @override
  String toString() {
    return 'CategoryModel(name: $name, image: $image, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, image, description);

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryModelImplCopyWith<_$CategoryModelImpl> get copyWith =>
      __$$CategoryModelImplCopyWithImpl<_$CategoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryModelImplToJson(
      this,
    );
  }
}

abstract class _CategoryModel implements CategoryModel {
  const factory _CategoryModel(
      {final String name,
      final String image,
      final String description}) = _$CategoryModelImpl;

  factory _CategoryModel.fromJson(Map<String, dynamic> json) =
      _$CategoryModelImpl.fromJson;

  @override
  String get name;
  @override
  String get image;
  @override
  String get description;

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryModelImplCopyWith<_$CategoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
