import 'package:flutter/material.dart';
import 'package:weather_app/common/constants.dart';
import 'package:weather_app/models/weather/weather_data/weather_data.dart';
import 'package:weather_app/view/weather/components/info_tab.dart';

class InfoSection extends StatelessWidget {
  final WeatherData weatherData;

  const InfoSection(this.weatherData);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(
          height:  Dimensions.space,
        ),
        Row(
          children: <InfoTab>[
            InfoTab(
              imagePath: 'assets/images/weather/color/rain_probability.png',
              textContent: '${(weatherData.daily[0].pop * 100).round()} %',
            ),
            InfoTab(
              imagePath: 'assets/images/weather/color/uv.png',
              textContent: 'UV: ${weatherData.current.uvi.round()}',
            ),
            InfoTab(
              imagePath: 'assets/images/weather/color/humidity.png',
              textContent: '${weatherData.current.humidity} %',
            ),
          ],
        ),
      ],
    );
  }
}
