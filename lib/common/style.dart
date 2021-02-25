import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/common/theme.dart';

TextStyle lowTemperatureTextStyle({@required BuildContext context}) {
  assert(context != null, 'BuildContext is required');
  return Theme.of(context).textTheme.bodyText2.copyWith(color: kBlue);
}

TextStyle mediumTemperatureTextStyle({@required BuildContext context}) {
  assert(context != null, 'BuildContext is required');
  return Theme.of(context).textTheme.bodyText2.copyWith(color: kBlack);
}

TextStyle highTemperatureTextStyle({@required BuildContext context}) {
  assert(context != null, 'BuildContext is required');
  return Theme.of(context).textTheme.bodyText2.copyWith(color: kRed);
}

TextStyle errorMsgTextStyle() => const TextStyle(color: kRed, fontSize: 14.0);

InputDecoration searchBarTextFieldStyle() => const InputDecoration(
      hintText: 'Search',
      enabledBorder: InputBorder.none,
      border: InputBorder.none,
    );
