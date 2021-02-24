import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/theme/theme.dart';

TextStyle lowTemperatureTextStyle({@required BuildContext context}) =>
    Theme.of(context).textTheme.bodyText2.copyWith(color: kBlue);

TextStyle mediumTemperatureTextStyle({@required BuildContext context}) =>
    Theme.of(context).textTheme.bodyText2.copyWith(color: kBlack);

TextStyle highTemperatureTextStyle({@required BuildContext context}) =>
    Theme.of(context).textTheme.bodyText2.copyWith(color: kRed);
