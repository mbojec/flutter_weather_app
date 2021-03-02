import 'package:flutter/material.dart';
import 'package:weather_app/common/constants.dart';

class InfoDetailTab extends StatelessWidget {
  final BoxConstraints constraints;
  final String imagePath;
  final String textContent;

  const InfoDetailTab({this.constraints, this.imagePath, this.textContent});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          width: constraints.maxWidth / 3 - Dimensions.margin,
          height: 24.0,
          child: Image.asset(imagePath)
        ),
        const SizedBox(
          width: 4.0,
        ),
        Text(textContent)
      ],
    );
  }


}
