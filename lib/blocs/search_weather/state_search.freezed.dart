// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'state_search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SearchStateTearOff {
  const _$SearchStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  Success success(String cityName) {
    return Success(
      cityName,
    );
  }

// ignore: unused_element
  Loading loading() {
    return const Loading();
  }

// ignore: unused_element
  Clear clear() {
    return const Clear();
  }

// ignore: unused_element
  Error error({@required String error}) {
    return Error(
      error: error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SearchState = _$SearchStateTearOff();

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult success(String cityName),
    @required TResult loading(),
    @required TResult clear(),
    @required TResult error(String error),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult success(String cityName),
    TResult loading(),
    TResult clear(),
    TResult error(String error),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult success(Success value),
    @required TResult loading(Loading value),
    @required TResult clear(Clear value),
    @required TResult error(Error value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult success(Success value),
    TResult loading(Loading value),
    TResult clear(Clear value),
    TResult error(Error value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc
class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'SearchState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult success(String cityName),
    @required TResult loading(),
    @required TResult clear(),
    @required TResult error(String error),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(loading != null);
    assert(clear != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult success(String cityName),
    TResult loading(),
    TResult clear(),
    TResult error(String error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult success(Success value),
    @required TResult loading(Loading value),
    @required TResult clear(Clear value),
    @required TResult error(Error value),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(loading != null);
    assert(clear != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult success(Success value),
    TResult loading(Loading value),
    TResult clear(Clear value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SearchState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $SuccessCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) then) =
      _$SuccessCopyWithImpl<$Res>;
  $Res call({String cityName});
}

/// @nodoc
class _$SuccessCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(Success _value, $Res Function(Success) _then)
      : super(_value, (v) => _then(v as Success));

  @override
  Success get _value => super._value as Success;

  @override
  $Res call({
    Object cityName = freezed,
  }) {
    return _then(Success(
      cityName == freezed ? _value.cityName : cityName as String,
    ));
  }
}

/// @nodoc
class _$Success implements Success {
  const _$Success(this.cityName) : assert(cityName != null);

  @override
  final String cityName;

  @override
  String toString() {
    return 'SearchState.success(cityName: $cityName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Success &&
            (identical(other.cityName, cityName) ||
                const DeepCollectionEquality()
                    .equals(other.cityName, cityName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cityName);

  @JsonKey(ignore: true)
  @override
  $SuccessCopyWith<Success> get copyWith =>
      _$SuccessCopyWithImpl<Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult success(String cityName),
    @required TResult loading(),
    @required TResult clear(),
    @required TResult error(String error),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(loading != null);
    assert(clear != null);
    assert(error != null);
    return success(cityName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult success(String cityName),
    TResult loading(),
    TResult clear(),
    TResult error(String error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(cityName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult success(Success value),
    @required TResult loading(Loading value),
    @required TResult clear(Clear value),
    @required TResult error(Error value),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(loading != null);
    assert(clear != null);
    assert(error != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult success(Success value),
    TResult loading(Loading value),
    TResult clear(Clear value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements SearchState {
  const factory Success(String cityName) = _$Success;

  String get cityName;
  @JsonKey(ignore: true)
  $SuccessCopyWith<Success> get copyWith;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc
class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'SearchState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult success(String cityName),
    @required TResult loading(),
    @required TResult clear(),
    @required TResult error(String error),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(loading != null);
    assert(clear != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult success(String cityName),
    TResult loading(),
    TResult clear(),
    TResult error(String error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult success(Success value),
    @required TResult loading(Loading value),
    @required TResult clear(Clear value),
    @required TResult error(Error value),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(loading != null);
    assert(clear != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult success(Success value),
    TResult loading(Loading value),
    TResult clear(Clear value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements SearchState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $ClearCopyWith<$Res> {
  factory $ClearCopyWith(Clear value, $Res Function(Clear) then) =
      _$ClearCopyWithImpl<$Res>;
}

/// @nodoc
class _$ClearCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements $ClearCopyWith<$Res> {
  _$ClearCopyWithImpl(Clear _value, $Res Function(Clear) _then)
      : super(_value, (v) => _then(v as Clear));

  @override
  Clear get _value => super._value as Clear;
}

/// @nodoc
class _$Clear implements Clear {
  const _$Clear();

  @override
  String toString() {
    return 'SearchState.clear()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Clear);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult success(String cityName),
    @required TResult loading(),
    @required TResult clear(),
    @required TResult error(String error),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(loading != null);
    assert(clear != null);
    assert(error != null);
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult success(String cityName),
    TResult loading(),
    TResult clear(),
    TResult error(String error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (clear != null) {
      return clear();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult success(Success value),
    @required TResult loading(Loading value),
    @required TResult clear(Clear value),
    @required TResult error(Error value),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(loading != null);
    assert(clear != null);
    assert(error != null);
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult success(Success value),
    TResult loading(Loading value),
    TResult clear(Clear value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class Clear implements SearchState {
  const factory Clear() = _$Clear;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(Error(
      error: error == freezed ? _value.error : error as String,
    ));
  }
}

/// @nodoc
class _$Error implements Error {
  const _$Error({@required this.error}) : assert(error != null);

  @override
  final String error;

  @override
  String toString() {
    return 'SearchState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult success(String cityName),
    @required TResult loading(),
    @required TResult clear(),
    @required TResult error(String error),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(loading != null);
    assert(clear != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult success(String cityName),
    TResult loading(),
    TResult clear(),
    TResult error(String error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult success(Success value),
    @required TResult loading(Loading value),
    @required TResult clear(Clear value),
    @required TResult error(Error value),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(loading != null);
    assert(clear != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult success(Success value),
    TResult loading(Loading value),
    TResult clear(Clear value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements SearchState {
  const factory Error({@required String error}) = _$Error;

  String get error;
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith;
}
