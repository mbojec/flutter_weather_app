import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app/constants.dart';
import 'package:weather_app/models/current/current_weather/current_weather.dart';
import 'package:weather_app/models/detail/detail_weather/detail_weather.dart';

class WeatherScreenArgs {
  final CurrentWeather currentWeather;
  final DetailWeather detailWeather;

  WeatherScreenArgs(this.currentWeather, this.detailWeather);
}

class WeatherScreen extends StatelessWidget {
  final WeatherScreenArgs args;

  const WeatherScreen({@required this.args});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(args.currentWeather.name),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => Navigator.of(context).pushNamed(RouteList.details),
          child: const Text('Navigate to details screen'),
        ),
      ),
    );
  }


}
