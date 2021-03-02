import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:path/path.dart';
import 'package:weather_app/common/style.dart';
import 'package:weather_app/constants.dart';

class Tools {
  static bool isCityNameValid({@required String value}) {
    // Option for polish signs
    // final RegExp _alpha = RegExp(r'^[a-zA-Z-żźćńółęąśŻŹĆĄŚĘŁÓŃ ]+$');
    final RegExp _alpha = RegExp(r'^[a-zA-Z ]+$');
    return _alpha.hasMatch(value);
  }

  static Text textFormatTemperature(
      {BuildContext context,
      int temp,
      double fontSize,
      FontWeight fontWeight}) {
    TextStyle tempTextStyle;
    if (temp < 10) {
      tempTextStyle = lowTemperatureTextStyle(context: context);
    } else if (temp > 20) {
      tempTextStyle = highTemperatureTextStyle(context: context);
    } else {
      tempTextStyle = mediumTemperatureTextStyle(context: context);
    }
    return Text('$temp\u00B0',
        style: tempTextStyle.copyWith(
            fontWeight: fontWeight, fontSize: fontSize));
  }

  static TextSpan textSpanFormatTemperature(
      {BuildContext context,
      int temp,
      double fontSize,
      FontWeight fontWeight}) {
    TextStyle tempTextStyle;
    if (temp < 10) {
      tempTextStyle = lowTemperatureTextStyle(context: context);
    } else if (temp > 20) {
      tempTextStyle = highTemperatureTextStyle(context: context);
    } else {
      tempTextStyle = mediumTemperatureTextStyle(context: context);
    }
    return TextSpan(
        text: '$temp\u00B0',
        style: tempTextStyle.copyWith(
            fontWeight: fontWeight, fontSize: fontSize));
  }

  static DateTime dateTimeFromSeconds(int secondsSinceEpoch) {
    final int millisecondsSinceEpoch = secondsSinceEpoch * 1000;
    return DateTime.fromMillisecondsSinceEpoch(millisecondsSinceEpoch,
        isUtc: true);
  }

  static String getTime(int secondsSinceEpoch){
    return DateFormat('HH:mm').format(
      Tools.dateTimeFromSeconds(
          secondsSinceEpoch),
    );
  }

  static String getWeekday(int weekday) {
    switch (weekday) {
      case 1:
        return 'Monday';
      case 2:
        return 'Tuesday';
      case 3:
        return 'Wednesday';
      case 4:
        return 'Thursday';
      case 5:
        return 'Friday';
      case 6:
        return 'Saturday';
      case 7:
        return 'Sunday';
      default:
        return '';
    }
  }

  static String getWindDirection(double windDegree){
    if(windDegree >= 0 && windDegree <= 22.5){
      return 'N';
    } else if(windDegree >= 22.6 && windDegree <= 67.5){
      return 'NE';
    } else if(windDegree >= 67.6 && windDegree <= 112.5){
      return 'E';
    } else if(windDegree >= 112.6 && windDegree <= 157.5){
      return 'SE';
    } else if(windDegree >= 157.6 && windDegree <= 202.5){
      return 'S';
    } else if(windDegree >= 202.6 && windDegree <= 247.5){
      return 'SW';
    } else if(windDegree >= 247.6 && windDegree <= 292.5){
      return 'W';
    } else if(windDegree >= 292.5 && windDegree <= 337.5){
      return 'NW';
    } else {
      return 'N';
    }
  }

  static Image getWeatherIcon(String weatherSymbol, IconColor iconColor){
    String iconBassetPath;
    switch(iconColor){
      case IconColor.color:
        iconBassetPath = 'assets/images/weather/color/${kWeatherIcons[weatherSymbol]}';
        break;
      case IconColor.black:
        iconBassetPath = 'assets/images/weather/black/${kWeatherIcons[weatherSymbol]}';
        break;
      case IconColor.grey:
        iconBassetPath = 'assets/images/weather/grey/${kWeatherIcons[weatherSymbol]}';
        break;
    }
    return Image.asset(iconBassetPath);
  }
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}
