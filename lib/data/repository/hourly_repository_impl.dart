import 'package:weather_app/data/data_source/hourly_api.dart';
import 'package:weather_app/data/mapper/hourly_mapper.dart';
import 'package:weather_app/domain/model/hourly.dart';
import 'package:weather_app/domain/repository/hourly_repository.dart';

class HourlyRepositoryImpl implements HourlyRepository {
  WeatherDataSource _dataSource;

  HourlyRepositoryImpl({
    required WeatherDataSource dataSource,
  }) : _dataSource = dataSource;

  @override
  Future<Hourly> getHourly(double lat, double lng) async {
    final result = await _dataSource.getWeather(lat, lng);
    return result.toHourly();
  }
}
