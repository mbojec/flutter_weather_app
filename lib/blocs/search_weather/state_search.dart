import 'package:freezed_annotation/freezed_annotation.dart';
part 'state_search.freezed.dart';

@freezed

abstract class SearchState with _$SearchState {
  const factory SearchState.initial() = Initial;
  const factory SearchState.success(String cityName) = Success;
  const factory SearchState.loading() = Loading;
  const factory SearchState.clear() = Clear;
  const factory SearchState.error({@required String error}) = Error;
}