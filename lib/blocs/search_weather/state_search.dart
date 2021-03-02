import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/models/city/city_data/city_data.dart';
import 'package:weather_app/models/weather/weather_data/weather_data.dart';

part 'state_search.freezed.dart';

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState.initial() = Initial;

  const factory SearchState.success(
      CityData currentWeather, WeatherData weatherData) = Success;

  const factory SearchState.loading() = Loading;

  const factory SearchState.clear() = Clear;

  const factory SearchState.error({@required String error}) = Error;
}
