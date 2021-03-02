import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app/common/tools.dart';
import 'package:weather_app/common/constants.dart';
import 'package:weather_app/models/weather/daily/daily.dart';
import 'package:weather_app/view/weather/components/info_detail_tab.dart';

class DetailInfoCard extends StatelessWidget {
  final Daily dailyWeather;

  const DetailInfoCard({this.dailyWeather});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Card(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 24.0,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: Dimensions.padding),
                child: Wrap(
                  runSpacing: 24.0,
                  children: <InfoDetailTab>[
                    InfoDetailTab(
                      constraints: constraints,
                      imagePath:
                          'assets/images/weather/color/rain_probability.png',
                      textContent: '${(dailyWeather.pop * 100).round()} %',
                    ),
                    InfoDetailTab(
                      constraints: constraints,
                      imagePath: 'assets/images/weather/color/uv.png',
                      textContent: 'UV: ${dailyWeather.uvi.round()}',
                    ),
                    InfoDetailTab(
                      constraints: constraints,
                      imagePath: 'assets/images/weather/color/humidity.png',
                      textContent: '${dailyWeather.humidity} %',
                    ),
                    InfoDetailTab(
                      constraints: constraints,
                      imagePath: 'assets/images/weather/color/sunrise.png',
                      textContent: '${Tools.getTime(dailyWeather.sunrise)} am',
                    ),
                    InfoDetailTab(
                      constraints: constraints,
                      imagePath: 'assets/images/weather/color/sunset.png',
                      textContent: '${Tools.getTime(dailyWeather.sunset)} pm',
                    ),
                    InfoDetailTab(
                      constraints: constraints,
                      imagePath:
                          'assets/images/weather/color/broken_clouds.png',
                      textContent: '${dailyWeather.clouds} %',
                    ),
                    InfoDetailTab(
                      constraints: constraints,
                      imagePath: 'assets/images/weather/color/wind.png',
                      textContent: '${dailyWeather.windSpeed} km/h',
                    ),
                    InfoDetailTab(
                      constraints: constraints,
                      imagePath:
                          'assets/images/weather/color/wind_direction.png',
                      textContent: Tools.getWindDirection(
                        dailyWeather.windDeg.toDouble(),
                      ),
                    ),
                    InfoDetailTab(
                      constraints: constraints,
                      imagePath: 'assets/images/weather/color/barometer.png',
                      textContent: '${dailyWeather.pressure} hPa',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
            ],
          ),
        );
      },
    );
  }
}
