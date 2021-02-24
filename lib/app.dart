import 'package:custom_splash/custom_splash.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/route.dart';
import 'package:weather_app/theme/theme.dart';
import 'package:weather_app/view/search.dart';

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather App',
      theme: buildAppTheme(),
      home: CustomSplash(
        imagePath: 'assets/images/logo.png',
        logoSize: 50,
        duration: 2000,
        home: SearchScreen(),
      ),
      onGenerateRoute: Routes.getRouteGenerate,
    );
  }
}