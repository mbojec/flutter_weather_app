import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/blocs/search_weather/state_search.dart';
import 'package:weather_app/common/tools.dart';
import 'package:weather_app/models/current/current_weather/current_weather.dart';
import 'package:weather_app/models/detail/detail_weather/detail_weather.dart';
import 'package:weather_app/models/search_item/search_item.dart';
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
        fetchCurrentWeather(cityName: searchItem.cityName);
      } else {
        emit(const SearchState.error(
            error: 'Invalid value :( Remember to use only text format.'));
      }
    });
  }

  Future<void> fetchCurrentWeather({@required String cityName}) async {
    final ApiResult<CurrentWeather> apiResult =
        await NetworkRepository().fetchCurrentWeatherData(cityName);
    apiResult.when(success: (CurrentWeather weather) {
      fetchDetailWeather(currentWeather: weather);
    }, failure: (NetworkExceptions exception) {
      emit(SearchState.error(
          error: NetworkExceptions.getErrorMessage(exception)));
    });
  }

  Future<void> fetchDetailWeather(
      {@required CurrentWeather currentWeather}) async {
    final ApiResult<DetailWeather> apiResult = await NetworkRepository()
        .fetchDetailWeatherData(
            currentWeather.coord.lat, currentWeather.coord.lon);
    apiResult.when(success: (DetailWeather detailWeather) {
      emit(SearchState.success(currentWeather, detailWeather));
    }, failure: (NetworkExceptions exception) {
      emit(SearchState.error(
          error: NetworkExceptions.getErrorMessage(exception)));
    });
  }

  void clear() {
    emit(const SearchState.clear());
  }
}
