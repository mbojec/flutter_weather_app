import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app/models/city/coord/coord.dart';

part 'city_data.g.dart';

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class CityData {
  Coord coord;
  String name;

  CityData(
      {this.coord,
        this.name,});

  factory CityData.fromJson(Map<String, dynamic> json) =>
      _$CityDataFromJson(json);

  Map<String, dynamic> toJson() => _$CityDataToJson(this);

}