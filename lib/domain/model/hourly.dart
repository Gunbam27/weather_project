import 'package:freezed_annotation/freezed_annotation.dart';

part 'hourly.freezed.dart';

part 'hourly.g.dart';

@freezed
class Hourly with _$Hourly {
  const factory Hourly({
    required List<String> time,
    required List<num> temperature,
    required List<num> rain,
    required List<num> weatherCode,

  }) = _Hourly;

  factory Hourly.fromJson(Map<String, Object?> json) => _$HourlyFromJson(json);
}