import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app/components/day_tag.dart';
import 'package:weather_app/common/constants.dart';
import 'package:weather_app/models/weather/daily/daily.dart';
import 'package:weather_app/view/details/components/detail_info_card.dart';
import 'package:weather_app/components/temp.dart';

class DetailsScreenArgs {
  final String cityName;
  final Daily daily;

  DetailsScreenArgs(this.cityName, this.daily);
}

class DetailsScreen extends StatelessWidget {
  final DetailsScreenArgs args;
  const DetailsScreen(this.args);

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
              DayTag(dayInSecond: args.daily.dt,),
              TemperatureSection.daily(daily: args.daily),
              const SizedBox(
                height: Dimensions.space,
              ),
              DetailInfoCard(dailyWeather: args.daily,)
            ],
          ),
        ),
      ),
    );
  }
}
