class WeatherDto {
  WeatherDto({
      this.latitude, 
      this.longitude, 
      this.generationtimeMs, 
      this.utcOffsetSeconds, 
      this.timezone, 
      this.timezoneAbbreviation, 
      this.elevation, 
      this.hourlyUnits, 
      this.hourly,});

  WeatherDto.fromJson(dynamic json) {
    latitude = json['latitude'];
    longitude = json['longitude'];
    generationtimeMs = json['generationtime_ms'];
    utcOffsetSeconds = json['utc_offset_seconds'];
    timezone = json['timezone'];
    timezoneAbbreviation = json['timezone_abbreviation'];
    elevation = json['elevation'];
    hourlyUnits = json['hourly_units'] != null ? HourlyUnits.fromJson(json['hourly_units']) : null;
    hourly = json['hourly'] != null ? Hourly.fromJson(json['hourly']) : null;
  }
  num? latitude;
  num? longitude;
  num? generationtimeMs;
  num? utcOffsetSeconds;
  String? timezone;
  String? timezoneAbbreviation;
  num? elevation;
  HourlyUnits? hourlyUnits;
  Hourly? hourly;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['latitude'] = latitude;
    map['longitude'] = longitude;
    map['generationtime_ms'] = generationtimeMs;
    map['utc_offset_seconds'] = utcOffsetSeconds;
    map['timezone'] = timezone;
    map['timezone_abbreviation'] = timezoneAbbreviation;
    map['elevation'] = elevation;
    if (hourlyUnits != null) {
      map['hourly_units'] = hourlyUnits?.toJson();
    }
    if (hourly != null) {
      map['hourly'] = hourly?.toJson();
    }
    return map;
  }

}

class Hourly {
  Hourly({
      this.time, 
      this.temperature2m, 
      this.rain, 
      this.weatherCode,});

  Hourly.fromJson(dynamic json) {
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