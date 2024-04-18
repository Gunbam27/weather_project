import 'package:weather_app/domain/model/hourly.dart';

abstract interface class HourlyRepository {
  Future<Hourly> getHourly(double lat, double lng);
}
