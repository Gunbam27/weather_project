// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hourly.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HourlyImpl _$$HourlyImplFromJson(Map<String, dynamic> json) => _$HourlyImpl(
      time: (json['time'] as List<dynamic>).map((e) => e as String).toList(),
      temperature: (json['temperature'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      rain: (json['rain'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      weatherCode:
          (json['weatherCode'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$HourlyImplToJson(_$HourlyImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'temperature': instance.temperature,
      'rain': instance.rain,
      'weatherCode': instance.weatherCode,
    };
