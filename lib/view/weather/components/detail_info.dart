import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app/common/theme.dart';
import 'package:weather_app/common/tools.dart';
import 'package:weather_app/models/detail/detail_weather/detail_weather.dart';
import 'package:weather_app/view/weather/components/info_detail_tab.dart';

class DetailInfoSection extends StatefulWidget {
  final DetailWeather detailWeather;

  const DetailInfoSection(this.detailWeather);

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
            children: [
              if (_showDetail)
                const SizedBox(
                  height: 24.0,
                ),
              if (_showDetail)
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Wrap(
                      runSpacing: 24.0,
                      children: <InfoDetailTab>[
                        InfoDetailTab(
                          constraints: constraints,
                          imagePath: 'assets/images/weather/color/sunrise.png',
                          textContent:
                              '${Tools.getTime(widget.detailWeather.current.sunrise)} am',
                        ),
                        InfoDetailTab(
                          constraints: constraints,
                          imagePath: 'assets/images/weather/color/sunset.png',
                          textContent:
                              '${Tools.getTime(widget.detailWeather.current.sunset)} pm',
                        ),
                        InfoDetailTab(
                          constraints: constraints,
                          imagePath:
                              'assets/images/weather/color/broken_clouds.png',
                          textContent:
                              '${widget.detailWeather.current.clouds}%',
                        ),
                        InfoDetailTab(
                          constraints: constraints,
                          imagePath: 'assets/images/weather/color/wind.png',
                          textContent:
                              '${widget.detailWeather.current.windSpeed} km/h',
                        ),
                        InfoDetailTab(
                          constraints: constraints,
                          imagePath:
                              'assets/images/weather/color/wind_direction.png',
                          textContent: Tools.getWindDirection(
                            widget.detailWeather.current.windDeg.toDouble(),
                          ),
                        ),
                        InfoDetailTab(
                          constraints: constraints,
                          imagePath:
                              'assets/images/weather/color/barometer.png',
                          textContent:
                              '${widget.detailWeather.current.pressure} hPa',
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
