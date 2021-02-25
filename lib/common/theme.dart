import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/constants.dart';

// Color palette
const Color kBlue = Color(0xFF1B88FF);
const Color kLightBlue = Color(0xFFCCE4FF);
const Color kWhite = Color(0xFFFAF9FA);
const Color kYellow = Color(0xFFF6AE05);
const Color kBlack = Color(0xFF353343);
const Color kGrey = Color(0xFFbbbabb);
const Color kLightGrey = Color(0xffF1F2F3);
const Color kRed = Color(0xFFFF3018);
Color kDarkGrey = kBlack.withOpacity(0.65);

// App system colors
const Color kPrimaryColor = Colors.white;
const Color kAccentColorColor = kBlue;
const Color kErrorColor = kRed;

TextTheme _buildAppBarTextTheme() => const TextTheme().copyWith(
      headline6: const TextStyle(
        color: kBlack,
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
      ),
    );

AppBarTheme _buildAppBarTheme() => const AppBarTheme().copyWith(
      brightness: Brightness.light,
      centerTitle: true,
      iconTheme: _buildIconTheme(),
      textTheme: _buildAppBarTextTheme(),
    );

TextTheme _buildTextTheme() => const TextTheme().copyWith(
      // List tile / hint text
      subtitle1: const TextStyle(color: kBlack, fontSize: 16.0),
      // Regulat text
      bodyText2: const TextStyle(color: kBlack, fontSize: 18.0),
    );

IconThemeData _buildIconTheme() => const IconThemeData().copyWith(
      color: kBlack,
      size: 24.0,
    );

DividerThemeData _buildDividerTheme() => const DividerThemeData(
      indent: Dimensions.margin,
      endIndent: Dimensions.margin,
      color: kGrey,
      thickness: 1.0,
    );

ThemeData buildAppTheme() => ThemeData.light().copyWith(
      primaryColor: kPrimaryColor,
      accentColor: kAccentColorColor,
      scaffoldBackgroundColor: kWhite,
      errorColor: kErrorColor,
      bottomAppBarColor: kPrimaryColor,
      textTheme: _buildTextTheme(),
      iconTheme: _buildIconTheme(),
      appBarTheme: _buildAppBarTheme(),
      dividerTheme: _buildDividerTheme(),
    );
