import 'dart:convert';

import 'package:http/http.dart' as http;

import '../dto/hourly_dto.dart';
import '../dto/weather_dto.dart';

class WeatherDataSource {
  Future<HourlyDto> getWeather(double lat, double lng) async {
    final response = await http.get(Uri.parse(
        'https://api.open-meteo.com/v1/forecast?latitude=$lat&longitude=$lng&hourly=temperature_2m,rain,weather_code'));
    return WeatherDto.fromJson(jsonDecode(response.body)).hourly!;
  }
}
