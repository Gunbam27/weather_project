import 'package:weather_app/domain/model/hourly.dart';

import '../dto/hourly_dto.dart';

extension ToHourly on HourlyDto {
  Hourly toHourly() {
    return Hourly(
      time: time ?? [],
      temperature: temperature2m ?? [],
      rain: rain ?? [],
      weatherCode: weatherCode ?? [],
    );
  }
}
