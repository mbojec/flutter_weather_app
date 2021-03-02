import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app/models/detail/detail_weather/detail_weather.dart';
import 'package:weather_app/view/weather/components/daily_weather.dart';
import 'package:weather_app/view/weather/components/detail_info.dart';
import 'package:weather_app/view/weather/components/hour_weather.dart';
import 'package:weather_app/view/weather/components/info.dart';
import 'package:weather_app/view/weather/components/temp.dart';

class WeatherScreenArgs {
  final String cityName;
  final DetailWeather detailWeather;

  WeatherScreenArgs(this.cityName, this.detailWeather);
}

class WeatherScreen extends StatelessWidget {
  final WeatherScreenArgs args;

  const WeatherScreen({@required this.args});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(args.cityName),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TemperatureSection(args.detailWeather),
              InfoSection(args.detailWeather),
              const SizedBox(
                height: 32.0,
              ),
              DetailInfoSection(args.detailWeather),
              HourWeatherSection(args.detailWeather),
              const SizedBox(
                height: 32.0,
              ),
              DailyWeatherSection(args.detailWeather.daily)
            ],
          ),
        ),
      ),
    );
  }
}
