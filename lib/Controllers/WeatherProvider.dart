import 'dart:convert';

import 'package:agri_cure/Utils/Constants.dart';
import 'package:agri_cure/Utils/Utils.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class WeatherProvider extends ChangeNotifier{

  String city= "Lahore";
  int woeid = 2211177;
  bool fetchingData = false;

  bool fetchingDaysData = false;


  List<int> minTemperatureForecast = List.filled(7, 0);
  List<int> maxTemperatureForecast = List.filled(7, 0);
  List<String> weatherStateForecast = [];

  var temperature;
  var weatherState;

  fetchLocationData(String input) async{
    changeFetchingData(true);

    try {
      var searchResult = await http.get(Uri.parse(SearchLocationUrl + input));
      final response = json.decode(searchResult.body);

      if (response.isNotEmpty){
        var result = json.decode(searchResult.body)[0];

        city = result["title"];
        woeid = result["woeid"];
      }
      else{
        Utils.showToastMessage(toastMsg: "No corresponding record found");
      }

      changeFetchingData(false);
      notifyListeners();
    } on Exception catch(e) {
      changeFetchingData(false);
      notifyListeners();
       print("no data");
    }

  }

  void changeFetchingData(bool val){
    fetchingData = val;
    notifyListeners();
  }

  void changeFetchingDays(bool val){
    fetchingDaysData = val;
    notifyListeners();
  }

  Future fetchWeatherData() async {
    changeFetchingData(true);
    var locationResult = await http.get(Uri.parse(WeatherBylocationApiUrl+woeid.toString()));
    var result = json.decode(locationResult.body);
    var consolidated_weather = result["consolidated_weather"];
    var data = consolidated_weather[0];

    temperature = data["the_temp"].round();

    weatherState = data["weather_state_name"].replaceAll(' ', '').toLowerCase();

    changeFetchingData(false);

    notifyListeners();

  }


  Future fetchLocationDay() async {
    var today = new DateTime.now();
    changeFetchingDays(true);
    for (var i = 0; i < 7; i++) {
      var locationDayResult = await http.get(Uri.parse(WeatherBylocationApiUrl +
          woeid.toString() +
          '/' +
          new DateFormat('y/M/d')
              .format(today.add(new Duration(days: i + 1)))
              .toString()));
      var result = json.decode(locationDayResult.body);
      var data = result[0];

        minTemperatureForecast[i] = data["min_temp"].round();
        maxTemperatureForecast[i] = data["max_temp"].round();
        weatherStateForecast.add(data['weather_state_name']);
    }
    changeFetchingDays(false);

    notifyListeners();
  }
}