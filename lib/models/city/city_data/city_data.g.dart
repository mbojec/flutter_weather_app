// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CityData _$CityDataFromJson(Map<String, dynamic> json) {
  return CityData(
    coord: json['coord'] == null
        ? null
        : Coord.fromJson(json['coord'] as Map<String, dynamic>),
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$CityDataToJson(CityData instance) => <String, dynamic>{
      'coord': instance.coord?.toJson(),
      'name': instance.name,
    };
