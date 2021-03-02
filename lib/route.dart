import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app/common/constants.dart';
import 'package:weather_app/view/details/details.dart';
import 'package:weather_app/view/search/screen.dart';
import 'package:weather_app/view/weather/weather_screen.dart';

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
        final WeatherScreenArgs arguments =
            settings.arguments as WeatherScreenArgs;
        return MaterialPageRoute<WeatherScreen>(
          settings: settings,
          builder: (BuildContext context) => WeatherScreen(
            args: arguments,
          ),
        );
        break;
      case RouteList.details:
        final DetailsScreenArgs arguments =
        settings.arguments as DetailsScreenArgs;
        return MaterialPageRoute<DetailsScreen>(
          settings: settings,
          builder: (BuildContext context) => DetailsScreen(arguments),
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
