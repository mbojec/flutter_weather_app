import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app/models/detail/feels_like/feels_like.dart';
import 'package:weather_app/models/detail/temp/temp.dart';
import 'package:weather_app/models/detail/weather/weather.dart';
part 'daily.g.dart';

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class Daily {
  int dt;
  int sunrise;
  int sunset;
  Temp temp;
  FeelsLike feelsLike;
  int pressure;
  int humidity;
  double dewPoint;
  double windSpeed;
  int windDeg;
  List<Weather> weather;
  int clouds;
  double pop;
  double rain;
  double uvi;

  Daily(
      {this.dt,
        this.sunrise,
        this.sunset,
        this.temp,
        this.feelsLike,
        this.pressure,
        this.humidity,
        this.dewPoint,
        this.windSpeed,
        this.windDeg,
        this.weather,
        this.clouds,
        this.pop,
        this.rain,
        this.uvi});

  factory Daily.fromJson(Map<String, dynamic> json) =>
      _$DailyFromJson(json);

  Map<String, dynamic> toJson() => _$DailyToJson(this);
}