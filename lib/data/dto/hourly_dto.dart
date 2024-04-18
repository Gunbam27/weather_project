class HourlyDto {
  HourlyDto({
      this.time, 
      this.temperature2m, 
      this.rain, 
      this.weatherCode,});

  HourlyDto.fromJson(dynamic json) {
    time = json['time'] != null ? json['time'].cast<String>() : [];
    temperature2m = json['temperature_2m'] != null ? json['temperature_2m'].cast<num>() : [];
    rain = json['rain'] != null ? json['rain'].cast<num>() : [];
    weatherCode = json['weather_code'] != null ? json['weather_code'].cast<num>() : [];
  }
  List<String>? time;
  List<num>? temperature2m;
  List<num>? rain;
  List<num>? weatherCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['time'] = time;
    map['temperature_2m'] = temperature2m;
    map['rain'] = rain;
    map['weather_code'] = weatherCode;
    return map;
  }

}

class HourlyUnits {
  HourlyUnits({
      this.time, 
      this.temperature2m, 
      this.rain, 
      this.weatherCode,});

  HourlyUnits.fromJson(dynamic json) {
    time = json['time'];
    temperature2m = json['temperature_2m'];
    rain = json['rain'];
    weatherCode = json['weather_code'];
  }
  String? time;
  String? temperature2m;
  String? rain;
  String? weatherCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['time'] = time;
    map['temperature_2m'] = temperature2m;
    map['rain'] = rain;
    map['weather_code'] = weatherCode;
    return map;
  }

}