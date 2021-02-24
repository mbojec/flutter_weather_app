import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app/constants.dart';
import 'package:weather_app/view/details.dart';
import 'package:weather_app/view/search.dart';
import 'package:weather_app/view/weather.dart';

class Routes {
  static MaterialPageRoute<Widget> getRouteGenerate(RouteSettings settings) =>
      _routeGenerate(settings);

  static MaterialPageRoute<Widget> _routeGenerate(RouteSettings settings) {
    switch (settings.name) {
      case RouteList.search:
        return MaterialPageRoute<SearchScreen>(
          settings: settings,
          builder: (BuildContext context) => SearchScreen(),
        );
      case RouteList.weather:
        return MaterialPageRoute<WeatherScreen>(
          settings: settings,
          builder: (BuildContext context) => WeatherScreen(),
        );
        break;
      case RouteList.details:
        return MaterialPageRoute<DetailsScreen>(
          settings: settings,
          builder: (BuildContext context) => DetailsScreen(),
        );
        break;
      default:
        return MaterialPageRoute<SearchScreen>(
          settings: settings,
          builder: (BuildContext context) => SearchScreen(),
        );
    }
  }
}
