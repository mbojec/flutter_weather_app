import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/blocs/search_history/cubit.dart';
import 'package:weather_app/blocs/search_weather/cubit.dart';
import 'package:weather_app/blocs/search_weather/state_search.dart';
import 'package:weather_app/constants.dart';
import 'package:weather_app/models/current/current_weather/current_weather.dart';
import 'package:weather_app/models/detail/detail_weather/detail_weather.dart';
import 'package:weather_app/models/search_item/search_item.dart';
import 'package:weather_app/view/search/components/search_status_banner.dart';
import 'package:weather_app/view/search/components/search_bar.dart';
import 'package:weather_app/view/search/components/search_history.dart';
import 'package:weather_app/view/weather/weather_screen.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    context.read<SearchHistoryCubit>().fetchSearchHistory();
    return BlocListener<SearchCubit, SearchState>(
      listener: (BuildContext context, SearchState state) {
        state.maybeWhen(
            success:
                (CurrentWeather currentWeather, DetailWeather detailWeather) {
              context.read<SearchHistoryCubit>().addNewValueToSearchHistory(
                  context.read<SearchCubit>().currentSearchItem
                  );
              Navigator.of(context)
                  .pushNamed(RouteList.weather,
                      arguments:
                          WeatherScreenArgs(currentWeather.name, detailWeather))
                  .then((_) {
                context.read<SearchHistoryCubit>().fetchSearchHistory();
              });
            },
            orElse: () {});
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('SearchScreen'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SearchBar(),
            SearchStatusBanner(),
            Expanded(child: SearchHistory()),
          ],
        ),
      ),
    );
  }
}
