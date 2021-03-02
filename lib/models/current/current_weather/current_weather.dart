import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app/models/current/clouds/clouds.dart';
import 'package:weather_app/models/current/coord/coord.dart';
import 'package:weather_app/models/current/main/main.dart';
import 'package:weather_app/models/current/sys/sys.dart';
import 'package:weather_app/models/current/weather/weather.dart';
import 'package:weather_app/models/current/wind/wind.dart';

part 'current_weather.g.dart';

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class CurrentWeather {
  Coord coord;
  String name;

  CurrentWeather(
      {this.coord,
        this.name,});

  factory CurrentWeather.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentWeatherToJson(this);

}