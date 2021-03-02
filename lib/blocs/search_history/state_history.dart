import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/models/search_item/search_item.dart';

part 'state_history.freezed.dart';

@freezed
abstract class SearchHistoryState with _$SearchHistoryState {
  const factory SearchHistoryState.initial() = Initial;

  const factory SearchHistoryState.success(List<SearchItem> searchHistory) =
      Success;

  const factory SearchHistoryState.loading() = Loading;

  const factory SearchHistoryState.error({@required String error}) = Error;
}
