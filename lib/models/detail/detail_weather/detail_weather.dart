import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app/models/detail/current/current.dart';
import 'package:weather_app/models/detail/daily/daily.dart';
import 'package:weather_app/models/detail/hourly/hourly.dart';
import 'package:weather_app/models/detail/minutely/minutely.dart';
part 'detail_weather.g.dart';

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class DetailWeather {
  double lat;
  double lon;
  String timezone;
  int timezoneOffset;
  Current current;
  List<Minutely> minutely;
  List<Hourly> hourly;
  List<Daily> daily;

  DetailWeather(
      {this.lat,
        this.lon,
        this.timezone,
        this.timezoneOffset,
        this.current,
        this.minutely,
        this.hourly,
        this.daily});

  factory DetailWeather.fromJson(Map<String, dynamic> json) =>
      _$DetailWeatherFromJson(json);

  Map<String, dynamic> toJson() => _$DetailWeatherToJson(this);
}