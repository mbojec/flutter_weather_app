import 'package:flutter/material.dart';
import 'package:weather_app/common/tools.dart';
import 'package:weather_app/common/constants.dart';
import 'package:weather_app/models/weather/daily/daily.dart';
import 'package:weather_app/view/details/details.dart';

class DailyForecastCard extends StatelessWidget {
  final Daily daily;
  final String cityName;

  const DailyForecastCard(this.daily, this.cityName);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          Navigator.of(context).pushNamed(
            RouteList.details,
            arguments: DetailsScreenArgs(cityName, daily),
          );
        },
        leading: Text(
          Tools.getWeekday(Tools.dateTimeFromSeconds(daily.dt).weekday),
        ),
        title: RichText(
          textAlign: TextAlign.end,
          text: TextSpan(
            text: '',
            style: Theme.of(context).textTheme.bodyText2,
            children: <TextSpan>[
              Tools.textSpanFormatTemperature(
                context: context,
                temp: daily.temp.day.round(),
              ),
              const TextSpan(text: ' / '),
              Tools.textSpanFormatTemperature(
                context: context,
                temp: daily.temp.night.round(),
              )
            ],
          ),
        ),
        trailing: SizedBox(
          width: 24.0,
          height: 24.0,
          child: Tools.getWeatherIcon(daily.weather[0].icon, IconColor.black),
        ),
      ),
    );
  }
}
