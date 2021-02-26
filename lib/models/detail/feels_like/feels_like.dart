import 'package:json_annotation/json_annotation.dart';
part 'feels_like.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)

class FeelsLike {
  double day;
  double night;
  double eve;
  double morn;

  FeelsLike({this.day, this.night, this.eve, this.morn});

  factory FeelsLike.fromJson(Map<String, dynamic> json) =>
      _$FeelsLikeFromJson(json);

  Map<String, dynamic> toJson() => _$FeelsLikeToJson(this);
}