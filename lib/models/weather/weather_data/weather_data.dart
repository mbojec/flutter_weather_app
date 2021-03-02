import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app/models/weather/current/current.dart';
import 'package:weather_app/models/weather/daily/daily.dart';
import 'package:weather_app/models/weather/hourly/hourly.dart';
import 'package:weather_app/models/weather/minutely/minutely.dart';

part 'weather_data.g.dart';

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class WeatherData {
  double lat;
  double lon;
  String timezone;
  int timezoneOffset;
  Current current;
  List<Minutely> minutely;
  List<Hourly> hourly;
  List<Daily> daily;

  WeatherData(
      {this.lat,
        this.lon,
        this.timezone,
        this.timezoneOffset,
        this.current,
        this.minutely,
        this.hourly,
        this.daily});

  factory WeatherData.fromJson(Map<String, dynamic> json) =>
      _$WeatherDataFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherDataToJson(this);
}