import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/models/current/current_weather/current_weather.dart';
import 'package:weather_app/models/detail/detail_weather/detail_weather.dart';

part 'state_search.freezed.dart';

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState.initial() = Initial;

  const factory SearchState.success(
      CurrentWeather currentWeather, DetailWeather detailWeather) = Success;

  const factory SearchState.loading() = Loading;

  const factory SearchState.clear() = Clear;

  const factory SearchState.error({@required String error}) = Error;
}
