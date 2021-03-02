import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/common/theme.dart';
import 'package:weather_app/common/tools.dart';
import 'package:weather_app/models/detail/detail_weather/detail_weather.dart';
import 'package:weather_app/view/weather/components/hour_list.dart';

class HourWeatherSection extends StatefulWidget {
  final DetailWeather detailWeather;

  const HourWeatherSection(this.detailWeather);

  @override
  _HourWeatherSectionState createState() => _HourWeatherSectionState();
}

class _HourWeatherSectionState extends State<HourWeatherSection> {
  int position = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(
          height: 32.0,
        ),
        RichText(
          textAlign: TextAlign.left,
          text: TextSpan(
            text: '${Tools.getWeekday(Tools.dateTimeFromSeconds(
                        widget.detailWeather.hourly[position].dt)
                    .weekday)} - ',
            style: const TextStyle(fontWeight: FontWeight.bold, color: kBlack),
            children: <TextSpan>[
              TextSpan(
                text: DateFormat('dd MMM').format(Tools.dateTimeFromSeconds(
                    widget.detailWeather.hourly[position].dt)),
                style:
                    TextStyle(fontWeight: FontWeight.normal, color: kDarkGrey),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 16.0,
        ),
        HourList(widget.detailWeather.hourly),
      ],
    );
  }
}
