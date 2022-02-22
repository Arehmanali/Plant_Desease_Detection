import 'package:agricure/data/farm/models/Weather.dart';
import 'package:agricure/data/farm/utils/weather_temp.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DailySummaryView extends StatelessWidget {
  final Weather weather;

  const DailySummaryView({Key? key, required this.weather})
      : assert(weather != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final dayOfWeek =
        toBeginningOfSentenceCase(DateFormat('EEE').format(weather.date));

    return Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Text(dayOfWeek,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w300)),
              Text(
                  "${TemperatureConvert.kelvinToCelsius(weather.temp).round().toString()}°",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500)),
            ]),
            Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Container(
                    alignment: Alignment.center,
                    child: Icon(weather.getIconData(weather.iconCode))))
          ],
        ));
  }
}
