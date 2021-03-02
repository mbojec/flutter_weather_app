import 'package:flutter/material.dart';
import 'package:weather_app/components/day_tag.dart';
import 'package:weather_app/common/constants.dart';
import 'package:weather_app/models/weather/daily/daily.dart';
import 'package:weather_app/view/weather/components/daily_card.dart';

class DailyWeatherSection extends StatelessWidget {
  final List<Daily> dailyList;
  final String cityName;

  const DailyWeatherSection(this.dailyList, this.cityName);

  List<DailyForecastCard> _getDailyForecastCards(BuildContext context) {
    return dailyList.map((Daily daily) {
      return DailyForecastCard(daily, cityName);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          DayTag(dayInSecond: dailyList[1].dt,),
          DayTag(dayInSecond: dailyList[7].dt,),
        ],
      ),
      const SizedBox(
        height: Dimensions.margin,
      ),
      ..._getDailyForecastCards(context)
    ]);
  }
}
