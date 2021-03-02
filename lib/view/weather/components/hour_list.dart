import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app/models/detail/hourly/hourly.dart';
import 'package:weather_app/view/weather/components/hour_tag.dart';

class HourList extends StatefulWidget {
  final List<Hourly> hourList;

  @override
  _HourListState createState() => _HourListState();

  const HourList(this.hourList);
}

class _HourListState extends State<HourList> {
  int position = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125.0,
      child: NotificationListener<ScrollUpdateNotification>(
        onNotification: (ScrollUpdateNotification notification) {
          setState(() {
            position = (notification.metrics.pixels / 70.0).round();
          });
          return true;
        },
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 23,
            itemBuilder: (BuildContext context, int index) {
              if (position == index) {
                return Card(
                  child: HourTag(
                    hourly: widget.hourList[index],
                    isCurrent: true,
                  ),
                );
              } else {
                return HourTag(
                  hourly: widget.hourList[index],
                  isCurrent: false,
                );
              }
            }),
      ),
    );
  }
}
