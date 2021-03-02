import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/blocs/search_weather/state_search.dart';
import 'package:weather_app/common/tools.dart';
import 'package:weather_app/models/city/city_data/city_data.dart';
import 'package:weather_app/models/search_item/search_item.dart';
import 'package:weather_app/models/weather/weather_data/weather_data.dart';
import 'package:weather_app/repository/network/api_result.dart';
import 'package:weather_app/repository/network/network_exceptions.dart';
import 'package:weather_app/repository/network/repository.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchItem currentSearchItem;

  SearchCubit() : super(const SearchState.initial());

  Future<void> search({@required SearchItem searchItem}) async {
    emit(const SearchState.loading());
    Future<void>.delayed(const Duration(seconds: 2), () {
      if (Tools.isCityNameValid(value: searchItem.cityName)) {
        currentSearchItem = searchItem;
        fetchCityData(cityName: searchItem.cityName);
      } else {
        emit(const SearchState.error(
            error: 'Invalid value :( Remember to use only text format.'));
      }
    });
  }

  Future<void> fetchCityData({@required String cityName}) async {
    final ApiResult<CityData> apiResult =
        await NetworkRepository().fetchCityData(cityName);
    apiResult.when(success: (CityData weather) {
      fetchWeatherData(currentWeather: weather);
    }, failure: (NetworkExceptions exception) {
      emit(SearchState.error(
          error: NetworkExceptions.getErrorMessage(exception)));
    });
  }

  Future<void> fetchWeatherData(
      {@required CityData currentWeather}) async {
    final ApiResult<WeatherData> apiResult = await NetworkRepository()
        .fetchweatherDataData(
            currentWeather.coord.lat, currentWeather.coord.lon);
    apiResult.when(success: (WeatherData weatherData) {
      emit(SearchState.success(currentWeather, weatherData));
    }, failure: (NetworkExceptions exception) {
      emit(SearchState.error(
          error: NetworkExceptions.getErrorMessage(exception)));
    });
  }

  void clear() {
    emit(const SearchState.clear());
  }
}
