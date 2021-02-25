import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_item.freezed.dart';

part 'search_item.g.dart';

@freezed
abstract class SearchItem with _$SearchItem {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory SearchItem({
    @nullable @JsonKey(includeIfNull: false) int id,
    String cityName,
  }) = _SearchItem;

  factory SearchItem.fromJson(Map<String, dynamic> json) =>
      _$SearchItemFromJson(json);
}
