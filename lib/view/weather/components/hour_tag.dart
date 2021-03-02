import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/common/theme.dart';
import 'package:weather_app/common/tools.dart';
import 'package:weather_app/common/constants.dart';
import 'package:weather_app/models/weather/hourly/hourly.dart';

class HourTag extends StatelessWidget {
  final Hourly hourly;
  final bool isCurrent;

  const HourTag({this.hourly, this.isCurrent});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: HourTagSize.height,
      width: HourTagSize.width,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Tools.textFormatTemperature(
              context: context,
              temp: hourly.temp.round(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 24.0,
              height: 24.0,
              child:
              Tools.getWeatherIcon(hourly.weather[0].icon,
                  isCurrent ? IconColor.black : IconColor.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              DateFormat('HH:mm').format(
                DateTime.fromMillisecondsSinceEpoch(hourly.dt * 1000,
                    isUtc: true),
              ),
              style: TextStyle(color: isCurrent ? kBlack : kDarkGrey),
            ),
          )
        ],
      ),
    );
  }
}
