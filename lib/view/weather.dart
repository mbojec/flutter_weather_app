import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app/constants.dart';

class WeatherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WeatherScreen'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => Navigator.of(context).pushNamed(RouteList.details),
          child: const Text('Navigate to details screen'),
        ),
      ),
    );
  }
}
