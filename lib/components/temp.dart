import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app/common/tools.dart';
import 'package:weather_app/common/constants.dart';
import 'package:weather_app/models/weather/daily/daily.dart';
import 'package:weather_app/models/weather/weather_data/weather_data.dart';

class TemperatureSection extends StatelessWidget {
  final Daily dailyWeather;
  final double temp;
  final double feelsLikeTemp;
  final String weatherIcon;

  TemperatureSection({WeatherData weatherData})
      : dailyWeather = weatherData.daily[0],
        temp = weatherData.current.temp,
        feelsLikeTemp = weatherData.current.feelsLike,
        weatherIcon = weatherData.current.weather[0].icon;

  TemperatureSection.daily({Daily daily})
      : dailyWeather = daily,
        temp = daily.temp.day,
        feelsLikeTemp = daily.feelsLike.day,
        weatherIcon = daily.weather[0].icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(
          height: 16.0,
        ),
        Row(
          children: <Widget>[
            Expanded(
                child: Tools.textFormatTemperature(
                    context: context,
                    temp: temp.round(),
                    fontSize: Tools.getTempFontSize(context),
                    fontWeight: FontWeight.bold)),
            SizedBox(
                width: Tools.getWeatherIconSize(context),
                height: Tools.getWeatherIconSize(context),
                child: Tools.getWeatherIcon(weatherIcon, IconColor.color)
                // Image.asset('assets/images/weather/color/clear_sky_day.png'),
                )
          ],
        ),
        const SizedBox(
          height: 16.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            RichText(
              text: TextSpan(
                text: '${dailyWeather.weather[0].description} '.capitalize(),
                style: Theme.of(context).textTheme.bodyText2,
                children: <TextSpan>[
                  Tools.textSpanFormatTemperature(
                      context: context, temp: dailyWeather.temp.day.round()),
                  const TextSpan(text: ' / '),
                  Tools.textSpanFormatTemperature(
                      context: context, temp: dailyWeather.temp.night.round())
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                text: 'Feels like ',
                style: Theme.of(context).textTheme.bodyText2,
                children: <TextSpan>[
                  Tools.textSpanFormatTemperature(
                      context: context, temp: feelsLikeTemp.round())
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
