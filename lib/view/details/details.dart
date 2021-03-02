import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/common/tools.dart';
import 'package:weather_app/models/detail/current/current.dart';
import 'package:weather_app/models/detail/daily/daily.dart';
import 'package:weather_app/models/detail/detail_weather/detail_weather.dart';
import 'package:weather_app/view/weather/components/info.dart';
import 'package:weather_app/view/weather/components/temp.dart';

class DetailsScreenArgs {
  final String cityName;
  final Daily daily;

  DetailsScreenArgs(this.cityName, this.daily);
}

class DetailsScreen extends StatelessWidget {
  final DetailsScreenArgs args;
  DetailsScreen(this.args);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(args.cityName),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // TemperatureSection(args.detailWeather),
              // Card(
              //   child: Padding(
              //     padding: const EdgeInsets.symmetric(horizontal: 16.0),
              //     child: Column(
              //       children: [
              //         const SizedBox(
              //           height: 16.0,
              //         ),
              //         Row(
              //           children: <Widget>[
              //             Expanded(
              //               child: Row(
              //                 children: <Widget>[
              //                   SizedBox(
              //                       width: 24.0,
              //                       height: 24.0,
              //                       child: Image.asset(
              //                           'assets/images/weather/color/rain_probability.png')),
              //                   const SizedBox(
              //                     width: 4.0,
              //                   ),
              //                   Text('${(args.detailWeather.daily[0].pop * 100).round()} %'),
              //                 ],
              //               ),
              //             ),
              //             Expanded(
              //               child: Row(
              //                 children: <Widget>[
              //                   SizedBox(
              //                       width: 24.0,
              //                       height: 24.0,
              //                       child: Image.asset('assets/images/weather/color/uv.png')),
              //                   const SizedBox(
              //                     width: 4.0,
              //                   ),
              //                   Text('UV: ${args.detailWeather.current.uvi.round()}'),
              //                 ],
              //               ),
              //             ),
              //             Expanded(
              //               child: Row(
              //                 children: <Widget>[
              //                   SizedBox(
              //                       width: 24.0,
              //                       height: 24.0,
              //                       child: Image.asset(
              //                           'assets/images/weather/color/humidity.png')),
              //                   const SizedBox(
              //                     width: 4.0,
              //                   ),
              //                   Text('${args.detailWeather.current.humidity} %'),
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //         const SizedBox(
              //           height: 16.0,
              //         ),
              //         Row(
              //           children: <Widget>[
              //             Expanded(
              //               child: Row(
              //                 children: <Widget>[
              //                   SizedBox(
              //                     width: 24.0,
              //                     height: 24.0,
              //                     child:
              //                     Image.asset('assets/images/weather/color/sunrise.png'),
              //                   ),
              //                   const SizedBox(
              //                     width: 4.0,
              //                   ),
              //                   Expanded(
              //                     child: Text('${DateFormat('HH:mm').format(
              //                       Tools.dateTimeFromSeconds(args.detailWeather.current.sunrise),
              //                     )}am'),
              //                   ),
              //                 ],
              //               ),
              //             ),
              //             Expanded(
              //               child: Row(
              //                 children: <Widget>[
              //                   SizedBox(
              //                     width: 24.0,
              //                     height: 24.0,
              //                     child:
              //                     Image.asset('assets/images/weather/color/sunset.png'),
              //                   ),
              //                   const SizedBox(
              //                     width: 4.0,
              //                   ),
              //                   Expanded(
              //                     child: Text('${DateFormat('HH:mm').format(
              //                       Tools.dateTimeFromSeconds(args.detailWeather.current.sunset),
              //                     )}pm'),
              //                   ),
              //                 ],
              //               ),
              //             ),
              //             Expanded(
              //               child: Row(
              //                 children: <Widget>[
              //                   SizedBox(
              //                     width: 24.0,
              //                     height: 24.0,
              //                     child: Image.asset('assets/images/weather/color/broken_clouds.png'),
              //                   ),
              //                   const SizedBox(
              //                     width: 4.0,
              //                   ),
              //                   Expanded(
              //                     child:
              //                     Text('${args.detailWeather.current.clouds} %'),
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //         const SizedBox(
              //           height: 16.0,
              //         ),
              //         Row(
              //           children: <Widget>[
              //             Expanded(
              //               child: Row(
              //                 children: <Widget>[
              //                   SizedBox(
              //                     width: 24.0,
              //                     height: 24.0,
              //                     child:
              //                     Image.asset('assets/images/weather/color/sunrise.png'),
              //                   ),
              //                   const SizedBox(
              //                     width: 4.0,
              //                   ),
              //                   Expanded(
              //                     child: Text('${DateFormat('HH:mm').format(
              //                       Tools.dateTimeFromSeconds(args.detailWeather.current.sunrise),
              //                     )}am'),
              //                   ),
              //                 ],
              //               ),
              //             ),
              //             Expanded(
              //               child: Row(
              //                 children: <Widget>[
              //                   SizedBox(
              //                     width: 24.0,
              //                     height: 24.0,
              //                     child:
              //                     Image.asset('assets/images/weather/color/sunset.png'),
              //                   ),
              //                   const SizedBox(
              //                     width: 4.0,
              //                   ),
              //                   Expanded(
              //                     child: Text('${DateFormat('HH:mm').format(
              //                       Tools.dateTimeFromSeconds(args.detailWeather.current.sunset),
              //                     )}pm'),
              //                   ),
              //                 ],
              //               ),
              //             ),
              //             Expanded(
              //               child: Row(
              //                 children: <Widget>[
              //                   SizedBox(
              //                     width: 24.0,
              //                     height: 24.0,
              //                     child: Image.asset('assets/images/weather/color/wind.png'),
              //                   ),
              //                   const SizedBox(
              //                     width: 4.0,
              //                   ),
              //                   Expanded(
              //                     child:
              //                     Text('${args.detailWeather.current.windSpeed.round()} km/h'),
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //         const SizedBox(
              //           height: 16.0,
              //         ),
              //       ],
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
