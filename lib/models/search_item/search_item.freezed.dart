// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'search_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SearchItem _$SearchItemFromJson(Map<String, dynamic> json) {
  return _SearchItem.fromJson(json);
}

/// @nodoc
class _$SearchItemTearOff {
  const _$SearchItemTearOff();

// ignore: unused_element
  _SearchItem call(
      {@nullable @JsonKey(includeIfNull: false) int id, String cityName}) {
    return _SearchItem(
      id: id,
      cityName: cityName,
    );
  }

// ignore: unused_element
  SearchItem fromJson(Map<String, Object> json) {
    return SearchItem.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SearchItem = _$SearchItemTearOff();

/// @nodoc
mixin _$SearchItem {
  @nullable
  @JsonKey(includeIfNull: false)
  int get id;
  String get cityName;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $SearchItemCopyWith<SearchItem> get copyWith;
}

/// @nodoc
abstract class $SearchItemCopyWith<$Res> {
  factory $SearchItemCopyWith(
          SearchItem value, $Res Function(SearchItem) then) =
      _$SearchItemCopyWithImpl<$Res>;
  $Res call({@nullable @JsonKey(includeIfNull: false) int id, String cityName});
}

/// @nodoc
class _$SearchItemCopyWithImpl<$Res> implements $SearchItemCopyWith<$Res> {
  _$SearchItemCopyWithImpl(this._value, this._then);

  final SearchItem _value;
  // ignore: unused_field
  final $Res Function(SearchItem) _then;

  @override
  $Res call({
    Object id = freezed,
    Object cityName = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      cityName: cityName == freezed ? _value.cityName : cityName as String,
    ));
  }
}

/// @nodoc
abstract class _$SearchItemCopyWith<$Res> implements $SearchItemCopyWith<$Res> {
  factory _$SearchItemCopyWith(
          _SearchItem value, $Res Function(_SearchItem) then) =
      __$SearchItemCopyWithImpl<$Res>;
  @override
  $Res call({@nullable @JsonKey(includeIfNull: false) int id, String cityName});
}

/// @nodoc
class __$SearchItemCopyWithImpl<$Res> extends _$SearchItemCopyWithImpl<$Res>
    implements _$SearchItemCopyWith<$Res> {
  __$SearchItemCopyWithImpl(
      _SearchItem _value, $Res Function(_SearchItem) _then)
      : super(_value, (v) => _then(v as _SearchItem));

  @override
  _SearchItem get _value => super._value as _SearchItem;

  @override
  $Res call({
    Object id = freezed,
    Object cityName = freezed,
  }) {
    return _then(_SearchItem(
      id: id == freezed ? _value.id : id as int,
      cityName: cityName == freezed ? _value.cityName : cityName as String,
    ));
  }
}

@JsonSerializable(fieldRename: FieldRename.snake)

/// @nodoc
class _$_SearchItem implements _SearchItem {
  _$_SearchItem(
      {@nullable @JsonKey(includeIfNull: false) this.id, this.cityName});

  factory _$_SearchItem.fromJson(Map<String, dynamic> json) =>
      _$_$_SearchItemFromJson(json);

  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final int id;
  @override
  final String cityName;

  @override
  String toString() {
    return 'SearchItem(id: $id, cityName: $cityName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchItem &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.cityName, cityName) ||
                const DeepCollectionEquality()
                    .equals(other.cityName, cityName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(cityName);

  @JsonKey(ignore: true)
  @override
  _$SearchItemCopyWith<_SearchItem> get copyWith =>
      __$SearchItemCopyWithImpl<_SearchItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SearchItemToJson(this);
  }
}

abstract class _SearchItem implements SearchItem {
  factory _SearchItem(
      {@nullable @JsonKey(includeIfNull: false) int id,
      String cityName}) = _$_SearchItem;

  factory _SearchItem.fromJson(Map<String, dynamic> json) =
      _$_SearchItem.fromJson;

  @override
  @nullable
  @JsonKey(includeIfNull: false)
  int get id;
  @override
  String get cityName;
  @override
  @JsonKey(ignore: true)
  _$SearchItemCopyWith<_SearchItem> get copyWith;
}
