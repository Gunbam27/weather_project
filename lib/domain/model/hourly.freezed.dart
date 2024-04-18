// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hourly.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Hourly _$HourlyFromJson(Map<String, dynamic> json) {
  return _Hourly.fromJson(json);
}

/// @nodoc
mixin _$Hourly {
  List<String> get time => throw _privateConstructorUsedError;

  List<num> get temperature => throw _privateConstructorUsedError;

  List<num> get rain => throw _privateConstructorUsedError;

  List<num> get weatherCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HourlyCopyWith<Hourly> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HourlyCopyWith<$Res> {
  factory $HourlyCopyWith(Hourly value, $Res Function(Hourly) then) =
      _$HourlyCopyWithImpl<$Res, Hourly>;

  @useResult
  $Res call(
      {List<String> time,
      List<num> temperature,
      List<num> rain,
      List<num> weatherCode});
}

/// @nodoc
class _$HourlyCopyWithImpl<$Res, $Val extends Hourly>
    implements $HourlyCopyWith<$Res> {
  _$HourlyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? temperature = null,
    Object? rain = null,
    Object? weatherCode = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as List<num>,
      rain: null == rain
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as List<num>,
      weatherCode: null == weatherCode
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as List<num>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HourlyImplCopyWith<$Res> implements $HourlyCopyWith<$Res> {
  factory _$$HourlyImplCopyWith(
          _$HourlyImpl value, $Res Function(_$HourlyImpl) then) =
      __$$HourlyImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {List<String> time,
      List<num> temperature,
      List<num> rain,
      List<num> weatherCode});
}

/// @nodoc
class __$$HourlyImplCopyWithImpl<$Res>
    extends _$HourlyCopyWithImpl<$Res, _$HourlyImpl>
    implements _$$HourlyImplCopyWith<$Res> {
  __$$HourlyImplCopyWithImpl(
      _$HourlyImpl _value, $Res Function(_$HourlyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? temperature = null,
    Object? rain = null,
    Object? weatherCode = null,
  }) {
    return _then(_$HourlyImpl(
      time: null == time
          ? _value._time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>,
      temperature: null == temperature
          ? _value._temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as List<num>,
      rain: null == rain
          ? _value._rain
          : rain // ignore: cast_nullable_to_non_nullable
              as List<num>,
      weatherCode: null == weatherCode
          ? _value._weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as List<num>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HourlyImpl implements _Hourly {
  const _$HourlyImpl(
      {required final List<String> time,
      required final List<num> temperature,
      required final List<num> rain,
      required final List<num> weatherCode})
      : _time = time,
        _temperature = temperature,
        _rain = rain,
        _weatherCode = weatherCode;

  factory _$HourlyImpl.fromJson(Map<String, dynamic> json) =>
      _$$HourlyImplFromJson(json);

  final List<String> _time;

  @override
  List<String> get time {
    if (_time is EqualUnmodifiableListView) return _time;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_time);
  }

  final List<num> _temperature;

  @override
  List<num> get temperature {
    if (_temperature is EqualUnmodifiableListView) return _temperature;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_temperature);
  }

  final List<num> _rain;

  @override
  List<num> get rain {
    if (_rain is EqualUnmodifiableListView) return _rain;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rain);
  }

  final List<num> _weatherCode;

  @override
  List<num> get weatherCode {
    if (_weatherCode is EqualUnmodifiableListView) return _weatherCode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weatherCode);
  }

  @override
  String toString() {
    return 'Hourly(time: $time, temperature: $temperature, rain: $rain, weatherCode: $weatherCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HourlyImpl &&
            const DeepCollectionEquality().equals(other._time, _time) &&
            const DeepCollectionEquality()
                .equals(other._temperature, _temperature) &&
            const DeepCollectionEquality().equals(other._rain, _rain) &&
            const DeepCollectionEquality()
                .equals(other._weatherCode, _weatherCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_time),
      const DeepCollectionEquality().hash(_temperature),
      const DeepCollectionEquality().hash(_rain),
      const DeepCollectionEquality().hash(_weatherCode));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HourlyImplCopyWith<_$HourlyImpl> get copyWith =>
      __$$HourlyImplCopyWithImpl<_$HourlyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HourlyImplToJson(
      this,
    );
  }
}

abstract class _Hourly implements Hourly {
  const factory _Hourly(
      {required final List<String> time,
      required final List<num> temperature,
      required final List<num> rain,
      required final List<num> weatherCode}) = _$HourlyImpl;

  factory _Hourly.fromJson(Map<String, dynamic> json) = _$HourlyImpl.fromJson;

  @override
  List<String> get time;

  @override
  List<num> get temperature;

  @override
  List<num> get rain;

  @override
  List<num> get weatherCode;

  @override
  @JsonKey(ignore: true)
  _$$HourlyImplCopyWith<_$HourlyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
