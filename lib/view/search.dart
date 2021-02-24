import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app/constants.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SearchScreen'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => Navigator.of(context).pushNamed(RouteList.weather),
          child: const Text('Navigate to Weather screen'),
        ),
      ),
    );
  }
}
