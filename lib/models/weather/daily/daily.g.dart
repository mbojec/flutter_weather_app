// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Daily _$DailyFromJson(Map<String, dynamic> json) {
  return Daily(
    dt: json['dt'] as int,
    sunrise: json['sunrise'] as int,
    sunset: json['sunset'] as int,
    temp: json['temp'] == null
        ? null
        : Temp.fromJson(json['temp'] as Map<String, dynamic>),
    feelsLike: json['feels_like'] == null
        ? null
        : FeelsLike.fromJson(json['feels_like'] as Map<String, dynamic>),
    pressure: json['pressure'] as int,
    humidity: json['humidity'] as int,
    dewPoint: (json['dew_point'] as num)?.toDouble(),
    windSpeed: (json['wind_speed'] as num)?.toDouble(),
    windDeg: json['wind_deg'] as int,
    weather: (json['weather'] as List)
        ?.map((e) =>
            e == null ? null : Weather.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    clouds: json['clouds'] as int,
    pop: (json['pop'] as num)?.toDouble(),
    rain: (json['rain'] as num)?.toDouble(),
    uvi: (json['uvi'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$DailyToJson(Daily instance) => <String, dynamic>{
      'dt': instance.dt,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'temp': instance.temp?.toJson(),
      'feels_like': instance.feelsLike?.toJson(),
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'dew_point': instance.dewPoint,
      'wind_speed': instance.windSpeed,
      'wind_deg': instance.windDeg,
      'weather': instance.weather?.map((e) => e?.toJson())?.toList(),
      'clouds': instance.clouds,
      'pop': instance.pop,
      'rain': instance.rain,
      'uvi': instance.uvi,
    };
