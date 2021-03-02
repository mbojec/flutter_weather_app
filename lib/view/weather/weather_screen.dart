import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app/common/constants.dart';
import 'package:weather_app/models/weather/weather_data/weather_data.dart';
import 'package:weather_app/view/weather/components/daily_weather.dart';
import 'package:weather_app/view/weather/components/detail_info.dart';
import 'package:weather_app/view/weather/components/hour_weather.dart';
import 'package:weather_app/view/weather/components/info.dart';
import 'package:weather_app/components/temp.dart';

class WeatherScreenArgs {
  final String cityName;
  final WeatherData weatherData;

  WeatherScreenArgs(this.cityName, this.weatherData);
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
          padding: const EdgeInsets.all(Dimensions.padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TemperatureSection(weatherData: args.weatherData),
              InfoSection(args.weatherData),
              const SizedBox(
                height: Dimensions.space,
              ),
              DetailInfoSection(args.weatherData),
              HourWeatherSection(args.weatherData),
              const SizedBox(
                height: Dimensions.space,
              ),
              DailyWeatherSection(args.weatherData.daily, args.cityName)
            ],
          ),
        ),
      ),
    );
  }
}
