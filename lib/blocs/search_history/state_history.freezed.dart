// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'state_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SearchHistoryStateTearOff {
  const _$SearchHistoryStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  Success success(List<SearchItem> searchHistory) {
    return Success(
      searchHistory,
    );
  }

// ignore: unused_element
  Loading loading() {
    return const Loading();
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
const $SearchHistoryState = _$SearchHistoryStateTearOff();

/// @nodoc
mixin _$SearchHistoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult success(List<SearchItem> searchHistory),
    @required TResult loading(),
    @required TResult error(String error),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult success(List<SearchItem> searchHistory),
    TResult loading(),
    TResult error(String error),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult success(Success value),
    @required TResult loading(Loading value),
    @required TResult error(Error value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult success(Success value),
    TResult loading(Loading value),
    TResult error(Error value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SearchHistoryStateCopyWith<$Res> {
  factory $SearchHistoryStateCopyWith(
          SearchHistoryState value, $Res Function(SearchHistoryState) then) =
      _$SearchHistoryStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchHistoryStateCopyWithImpl<$Res>
    implements $SearchHistoryStateCopyWith<$Res> {
  _$SearchHistoryStateCopyWithImpl(this._value, this._then);

  final SearchHistoryState _value;
  // ignore: unused_field
  final $Res Function(SearchHistoryState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$SearchHistoryStateCopyWithImpl<$Res>
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
    return 'SearchHistoryState.initial()';
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
    @required TResult success(List<SearchItem> searchHistory),
    @required TResult loading(),
    @required TResult error(String error),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(loading != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult success(List<SearchItem> searchHistory),
    TResult loading(),
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
    @required TResult error(Error value),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(loading != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult success(Success value),
    TResult loading(Loading value),
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

abstract class Initial implements SearchHistoryState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $SuccessCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) then) =
      _$SuccessCopyWithImpl<$Res>;
  $Res call({List<SearchItem> searchHistory});
}

/// @nodoc
class _$SuccessCopyWithImpl<$Res> extends _$SearchHistoryStateCopyWithImpl<$Res>
    implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(Success _value, $Res Function(Success) _then)
      : super(_value, (v) => _then(v as Success));

  @override
  Success get _value => super._value as Success;

  @override
  $Res call({
    Object searchHistory = freezed,
  }) {
    return _then(Success(
      searchHistory == freezed
          ? _value.searchHistory
          : searchHistory as List<SearchItem>,
    ));
  }
}

/// @nodoc
class _$Success implements Success {
  const _$Success(this.searchHistory) : assert(searchHistory != null);

  @override
  final List<SearchItem> searchHistory;

  @override
  String toString() {
    return 'SearchHistoryState.success(searchHistory: $searchHistory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Success &&
            (identical(other.searchHistory, searchHistory) ||
                const DeepCollectionEquality()
                    .equals(other.searchHistory, searchHistory)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(searchHistory);

  @JsonKey(ignore: true)
  @override
  $SuccessCopyWith<Success> get copyWith =>
      _$SuccessCopyWithImpl<Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult success(List<SearchItem> searchHistory),
    @required TResult loading(),
    @required TResult error(String error),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(loading != null);
    assert(error != null);
    return success(searchHistory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult success(List<SearchItem> searchHistory),
    TResult loading(),
    TResult error(String error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(searchHistory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult success(Success value),
    @required TResult loading(Loading value),
    @required TResult error(Error value),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(loading != null);
    assert(error != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult success(Success value),
    TResult loading(Loading value),
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

abstract class Success implements SearchHistoryState {
  const factory Success(List<SearchItem> searchHistory) = _$Success;

  List<SearchItem> get searchHistory;
  @JsonKey(ignore: true)
  $SuccessCopyWith<Success> get copyWith;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$SearchHistoryStateCopyWithImpl<$Res>
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
    return 'SearchHistoryState.loading()';
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
    @required TResult success(List<SearchItem> searchHistory),
    @required TResult loading(),
    @required TResult error(String error),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(loading != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult success(List<SearchItem> searchHistory),
    TResult loading(),
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
    @required TResult error(Error value),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(loading != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult success(Success value),
    TResult loading(Loading value),
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

abstract class Loading implements SearchHistoryState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$SearchHistoryStateCopyWithImpl<$Res>
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
    return 'SearchHistoryState.error(error: $error)';
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
    @required TResult success(List<SearchItem> searchHistory),
    @required TResult loading(),
    @required TResult error(String error),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(loading != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult success(List<SearchItem> searchHistory),
    TResult loading(),
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
    @required TResult error(Error value),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(loading != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult success(Success value),
    TResult loading(Loading value),
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

abstract class Error implements SearchHistoryState {
  const factory Error({@required String error}) = _$Error;

  String get error;
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith;
}
