// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchItem _$_$_SearchItemFromJson(Map<String, dynamic> json) {
  return _$_SearchItem(
    id: json['id'] as int,
    cityName: json['city_name'] as String,
  );
}

Map<String, dynamic> _$_$_SearchItemToJson(_$_SearchItem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['city_name'] = instance.cityName;
  return val;
}
