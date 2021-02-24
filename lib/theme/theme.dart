import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Color palette
const Color kBlue = Color(0xFF1B88FF);
const Color kLightBlue = Color(0xFFCCE4FF);
const Color kWhite = Color(0xFFFAF9FA);
const Color kYellow = Color(0xFFF6AE05);
const Color kBlack = Color(0xFF353343);
const Color kGrey = Color(0xFFB4B3B4);
const Color kRed = Color(0xFFFF3018);

// App system colors
const Color kPrimaryColor = Colors.white;
const Color kAccentColorColor = kBlue;
const Color kErrorColor = kRed;

IconThemeData _buildAppBarIconTheme() {
  const IconThemeData _base = IconThemeData();
  return _base.copyWith(color: kBlack);
}

TextTheme _buildAppBarTextTheme() {
  const TextTheme _base = TextTheme();
  return _base.copyWith(
    headline6: const TextStyle(
      color: kBlack,
      fontWeight: FontWeight.bold,
      fontSize: 18.0,
    ),
  );
}

AppBarTheme _buildAppBarTheme() {
  const AppBarTheme _base = AppBarTheme();
  return _base.copyWith(
    brightness: Brightness.light,
    centerTitle: true,
    iconTheme: _buildAppBarIconTheme(),
    textTheme: _buildAppBarTextTheme(),
  );
}

TextTheme _buildTextTheme() {
  const TextTheme _base = TextTheme();
  return _base.copyWith(
    bodyText2: const TextStyle(color: kBlack),
  );
}

ThemeData buildAppTheme() {
  final ThemeData _base = ThemeData.light();
  return _base.copyWith(
    primaryColor: kPrimaryColor,
    accentColor: kAccentColorColor,
    scaffoldBackgroundColor: kWhite,
    errorColor: kErrorColor,
    bottomAppBarColor: kPrimaryColor,
    appBarTheme: _buildAppBarTheme(),
    textTheme: _buildTextTheme(),
  );
}
