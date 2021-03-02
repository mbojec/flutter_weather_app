import 'package:flutter/material.dart';
import 'package:weather_app/models/detail/detail_weather/detail_weather.dart';
import 'package:weather_app/view/weather/components/info_tab.dart';

class InfoSection extends StatelessWidget {
  final DetailWeather detailWeather;

  const InfoSection(this.detailWeather);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(
          height: 32.0,
        ),
        Row(
          children: <InfoTab>[
            InfoTab(
              imagePath: 'assets/images/weather/color/rain_probability.png',
              textContent: '${(detailWeather.daily[0].pop * 100).round()} %',
            ),
            InfoTab(
              imagePath: 'assets/images/weather/color/uv.png',
              textContent: 'UV: ${detailWeather.current.uvi.round()}',
            ),
            InfoTab(
              imagePath: 'assets/images/weather/color/humidity.png',
              textContent: '${detailWeather.current.humidity} %',
            ),
          ],
        ),
      ],
    );
  }
}
