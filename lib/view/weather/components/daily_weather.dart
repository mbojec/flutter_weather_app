import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/common/theme.dart';
import 'package:weather_app/common/tools.dart';
import 'package:weather_app/constants.dart';
import 'package:weather_app/models/detail/daily/daily.dart';
import 'package:weather_app/view/weather/components/daily_card.dart';

class DailyWeatherSection extends StatelessWidget {
  final List<Daily> dailyList;

  const DailyWeatherSection(this.dailyList);

  List<DailyForecastCard> _getDailyForecastCards(BuildContext context) {
    return dailyList.map((Daily daily) {
      return DailyForecastCard(daily);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
              text:
                  '${Tools.getWeekday(
                      Tools.dateTimeFromSeconds(dailyList[0].dt).weekday)} - ',
              style:
                  const TextStyle(fontWeight: FontWeight.bold, color: kBlack),
              children: <TextSpan>[
                TextSpan(
                  text: DateFormat('dd MMM').format(
                    Tools.dateTimeFromSeconds(dailyList[0].dt),
                  ),
                  style: TextStyle(
                      fontWeight: FontWeight.normal, color: kDarkGrey),
                ),
              ],
            ),
          ),
          RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
              text:
                  '${Tools.getWeekday(
                      Tools.dateTimeFromSeconds(dailyList[6].dt).weekday)} - ',
              style:
                  const TextStyle(fontWeight: FontWeight.bold, color: kBlack),
              children: <TextSpan>[
                TextSpan(
                  text: DateFormat('dd MMM').format(
                    Tools.dateTimeFromSeconds(dailyList[6].dt),
                  ),
                  style: TextStyle(
                      fontWeight: FontWeight.normal, color: kDarkGrey),
                ),
              ],
            ),
          )
        ],
      ),
      const SizedBox(
        height: 16.0,
      ),
      ..._getDailyForecastCards(context)
    ]);
  }
}
