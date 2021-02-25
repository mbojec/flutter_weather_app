import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/blocs/search_history/state_history.dart';
import 'package:weather_app/models/search_item/search_item.dart';
import 'package:weather_app/repository/db.dart';

class SearchHistoryCubit extends Cubit<SearchHistoryState> {
  SearchHistoryCubit() : super(const SearchHistoryState.initial());

  Future<void> fetchSearchHistory() async {
    emit(const SearchHistoryState.loading());
    try {
      final List<SearchItem> searchHistory =
          await DatabaseRepository().fetchSearchHistory();
      emit(SearchHistoryState.success(searchHistory));
    } catch (e) {
      emit(const SearchHistoryState.error(
          error: "There's been an error during fetching data from database"));
    }
  }

  Future<void> addNewValueToSearchHistory(SearchItem item) async {
    try {
      await DatabaseRepository().insert(item);
    } catch (e) {
      emit(const SearchHistoryState.error(
          error: "There's been an error during saving data to database"));
    }
  }
}
