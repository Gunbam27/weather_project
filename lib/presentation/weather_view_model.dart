import 'package:flutter/widgets.dart';
import 'package:weather_app/data/data_source/hourly_api.dart';
import 'package:weather_app/data/repository/hourly_repository_impl.dart';
import 'package:weather_app/domain/repository/hourly_repository.dart';

class WeatherViewModel with ChangeNotifier {
  WeatherViewModel({
    required HourlyRepository hourlyRepository,
  }) : _hourlyRepository = hourlyRepository;

  final HourlyRepository _hourlyRepository;

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  List<String> _hourlyTimeList = [];
  List<num> _hourlyTemperatureList = [];
  List<num> _hourlyRainList = [];
  List<num> _hourlyWeatherCodeList = [];

  HourlyRepository get hourlyRepository => _hourlyRepository;

  List<String> get hourlyTimeList => _hourlyTimeList;

  List<num> get hourlyTemperatureList => _hourlyTemperatureList;

  List<num> get hourlyRainList => _hourlyRainList;

  List<num> get hourlyWeatherCodeList => _hourlyWeatherCodeList;

  void showList(double lat, double lng) async {
    final _data = await _hourlyRepository.getHourly(lat, lng);
    _hourlyTimeList = _data.time;

    _hourlyTemperatureList = _data.temperature;

    _hourlyWeatherCodeList = _data.weatherCode;

    _hourlyRainList = _data.rain;
  }
}

void main() async {
  WeatherViewModel viewModel = WeatherViewModel(
      hourlyRepository: HourlyRepositoryImpl(dataSource: WeatherDataSource()));
  viewModel.showList(52, 13);
}
