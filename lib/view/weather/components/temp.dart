import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app/common/tools.dart';
import 'package:weather_app/constants.dart';
import 'package:weather_app/models/detail/daily/daily.dart';
import 'package:weather_app/models/detail/detail_weather/detail_weather.dart';

class TemperatureSection extends StatelessWidget {
  final DetailWeather detailWeather;
  // final Daily daily;
  // final double temp;
  // final double feelsLikeTemp;
  // final String weatherIcon;


  TemperatureSection(this.detailWeather);

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
                    temp: detailWeather.current.temp.round(),
                    fontSize: 112.0,
                    fontWeight: FontWeight.bold)),
            SizedBox(
                width: 120.0,
                height: 120.0,
                child: Tools.getWeatherIcon(
                    detailWeather.current.weather[0].icon, IconColor.color)
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
                text: '${detailWeather.daily[0].weather[0].description} '
                    .capitalize(),
                style: Theme.of(context).textTheme.bodyText2,
                children: <TextSpan>[
                  Tools.textSpanFormatTemperature(
                      context: context,
                      temp: detailWeather.daily[0].temp.day.round()),
                  const TextSpan(text: ' / '),
                  Tools.textSpanFormatTemperature(
                      context: context,
                      temp: detailWeather.daily[0].temp.night.round())
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                text: 'Feels like ',
                style: Theme.of(context).textTheme.bodyText2,
                children: <TextSpan>[
                  Tools.textSpanFormatTemperature(
                      context: context,
                      temp: detailWeather.current.feelsLike.round())
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
