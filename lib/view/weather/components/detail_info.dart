import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app/common/theme.dart';
import 'package:weather_app/common/tools.dart';
import 'package:weather_app/common/constants.dart';
import 'package:weather_app/models/weather/weather_data/weather_data.dart';
import 'package:weather_app/view/weather/components/info_detail_tab.dart';

class DetailInfoSection extends StatefulWidget {
  final WeatherData weatherData;

  const DetailInfoSection(this.weatherData);

  @override
  _DetailInfoSectionState createState() => _DetailInfoSectionState();
}

class _DetailInfoSectionState extends State<DetailInfoSection> {
  bool _showDetail = false;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Card(
          child: Column(
            children: <Widget>[
              if (_showDetail)
                const SizedBox(
                  height: 24.0,
                ),
              if (_showDetail)
                Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: Dimensions.margin),
                    child: Wrap(
                      runSpacing: 24.0,
                      children: <InfoDetailTab>[
                        InfoDetailTab(
                          constraints: constraints,
                          imagePath: 'assets/images/weather/color/sunrise.png',
                          textContent:
                              '${Tools.getTime(
                                  widget.weatherData.current.sunrise)} am',
                        ),
                        InfoDetailTab(
                          constraints: constraints,
                          imagePath: 'assets/images/weather/color/sunset.png',
                          textContent:
                              '${Tools.getTime(
                                  widget.weatherData.current.sunset)} pm',
                        ),
                        InfoDetailTab(
                          constraints: constraints,
                          imagePath:
                              'assets/images/weather/color/broken_clouds.png',
                          textContent: '${widget.weatherData.current.clouds}%',
                        ),
                        InfoDetailTab(
                          constraints: constraints,
                          imagePath: 'assets/images/weather/color/wind.png',
                          textContent:
                              '${widget.weatherData.current.windSpeed} km/h',
                        ),
                        InfoDetailTab(
                          constraints: constraints,
                          imagePath:
                              'assets/images/weather/color/wind_direction.png',
                          textContent: Tools.getWindDirection(
                            widget.weatherData.current.windDeg.toDouble(),
                          ),
                        ),
                        InfoDetailTab(
                          constraints: constraints,
                          imagePath:
                              'assets/images/weather/color/barometer.png',
                          textContent:
                              '${widget.weatherData.current.pressure} hPa',
                        ),
                      ],
                    ))
              else
                Container(),
              ListTile(
                onTap: () {
                  setState(() {
                    _showDetail = !_showDetail;
                  });
                },
                title: Text(
                  _showDetail ? 'Hide details' : 'See more details',
                  style: TextStyle(
                      color: kDarkGrey, decoration: TextDecoration.underline),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
