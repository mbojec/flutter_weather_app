import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/common/theme.dart';
import 'package:weather_app/common/tools.dart';

class DayTag extends StatelessWidget {
  final int dayInSecond;
  const DayTag({this.dayInSecond});
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.left,
      text: TextSpan(
        text:
        '${Tools.getWeekday(
            Tools.dateTimeFromSeconds(dayInSecond).weekday)} - ',
        style:
        const TextStyle(fontWeight: FontWeight.bold, color: kBlack),
        children: <TextSpan>[
          TextSpan(
            text: DateFormat('dd MMM').format(
              Tools.dateTimeFromSeconds(dayInSecond),
            ),
            style: TextStyle(
                fontWeight: FontWeight.normal, color: kDarkGrey),
          ),
        ],
      ),
    );
  }
}
