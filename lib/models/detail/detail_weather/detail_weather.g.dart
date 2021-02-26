// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailWeather _$DetailWeatherFromJson(Map<String, dynamic> json) {
  return DetailWeather(
    lat: (json['lat'] as num)?.toDouble(),
    lon: (json['lon'] as num)?.toDouble(),
    timezone: json['timezone'] as String,
    timezoneOffset: json['timezone_offset'] as int,
    current: json['current'] == null
        ? null
        : Current.fromJson(json['current'] as Map<String, dynamic>),
    minutely: (json['minutely'] as List)
        ?.map((e) =>
            e == null ? null : Minutely.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    hourly: (json['hourly'] as List)
        ?.map((e) =>
            e == null ? null : Hourly.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    daily: (json['daily'] as List)
        ?.map(
            (e) => e == null ? null : Daily.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$DetailWeatherToJson(DetailWeather instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
      'timezone': instance.timezone,
      'timezone_offset': instance.timezoneOffset,
      'current': instance.current?.toJson(),
      'minutely': instance.minutely?.map((e) => e?.toJson())?.toList(),
      'hourly': instance.hourly?.map((e) => e?.toJson())?.toList(),
      'daily': instance.daily?.map((e) => e?.toJson())?.toList(),
    };
