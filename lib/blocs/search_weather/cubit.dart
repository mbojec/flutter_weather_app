import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/blocs/search_weather/state_search.dart';
import 'package:weather_app/common/tools.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(const SearchState.initial());

  Future<void> search({@required String cityName}) async {
    emit(const SearchState.loading());
    Future<void>.delayed(const Duration(seconds: 2),(){
      if (Tools.isCityNameValid(value: cityName)) {
        emit(SearchState.success(cityName));
      } else {
        emit(const SearchState.error(
            error: 'Invalid value :( Remember to use only text format.'));
      }
    });
  }

  void clear() {
    emit(const SearchState.clear());
  }
}
