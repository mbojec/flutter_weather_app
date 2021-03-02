import 'package:flutter/material.dart';
import 'package:weather_app/components/day_tag.dart';
import 'package:weather_app/common/constants.dart';
import 'package:weather_app/models/weather/weather_data/weather_data.dart';
import 'package:weather_app/view/weather/components/hour_list.dart';

class HourWeatherSection extends StatelessWidget {
  final WeatherData weatherData;

  const HourWeatherSection(this.weatherData);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(
          height: Dimensions.space,
        ),
        DayTag(dayInSecond: weatherData.hourly[0].dt,),
        const SizedBox(
          height: Dimensions.margin,
        ),
        HourList(weatherData.hourly),
      ],
    );
  }
}
