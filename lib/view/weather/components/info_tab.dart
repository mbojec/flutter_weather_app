import 'package:flutter/material.dart';

class InfoTab extends StatelessWidget {
  final String imagePath;
  final String textContent;

  const InfoTab({this.imagePath, this.textContent});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
              width: 24.0,
              height: 24.0,
              child: Image.asset(
                  imagePath)),
          const SizedBox(
            width: 4.0,
          ),
          Text(textContent),
        ],
      ),
    );
  }


}
