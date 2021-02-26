import 'package:json_annotation/json_annotation.dart';
part 'wind.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Wind {
  double speed;
  int deg;

  Wind({this.speed, this.deg});

  factory Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);
  Map<String, dynamic> toJson() => _$WindToJson(this);
}