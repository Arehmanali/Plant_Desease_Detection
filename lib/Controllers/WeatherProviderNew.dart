import 'dart:convert';

import 'package:agri_cure/Models/WeatherModel.dart';
import 'package:agri_cure/Utils/Constants.dart';
import 'package:agri_cure/Utils/Utils.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class WeatherProviderNew extends ChangeNotifier{

  String city= "Lahore";
  int woeid = 2211177;
  bool fetchingData = false;

  bool fetchingDaysData = false;

  Weather? singleWeatherDetails;
  Main? singleWeatherMain;
  List<ListItem> multiDaysWeatherList= [];

  fetchSingleDayWeather(String input) async{
    changeFetchingData(true);

    try {
      Map<String,String> headersData = {
        "X-RapidAPI-Host": "community-open-weather-map.p.rapidapi.com",
        "X-RapidAPI-Key": "99493adb33mshc1ab3bc59ffcdc0p109062jsnd428c0a88bf2"
      };
      var searchResponse = await http.get(Uri.parse(SingleDayWeatherApi + input),
      headers: headersData
      );




      print("single screen res: ${searchResponse.statusCode}");
      print("single screen body: ${searchResponse.body}");

      if (searchResponse.statusCode == 200){
        SingleDayWeatherModel _singleWeather= SingleDayWeatherModel.fromJson(json.decode(searchResponse.body));

        singleWeatherDetails = _singleWeather.weather[0];
        singleWeatherMain = _singleWeather.main;


        city = input;
      }

      else if(searchResponse.statusCode == 404){
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

  Future fetchMultiDaysWeatherData(String input) async {
    changeFetchingData(true);

    Map<String,String> headersData = {
      "X-RapidAPI-Host": "community-open-weather-map.p.rapidapi.com",
      "X-RapidAPI-Key": "99493adb33mshc1ab3bc59ffcdc0p109062jsnd428c0a88bf2"
    };

    var response = await http.get(Uri.parse(MultiDaysWeatherApi+input),
    headers: headersData
    );

    print("single screen res: ${response.statusCode}");
    print("single screen body: ${response.body}");
    if (response.statusCode == 200){
      MultiDaysWeatherModel _multiWeather= MultiDaysWeatherModel.fromJson(json.decode(response.body));
      multiDaysWeatherList = _multiWeather.list;
      print("multi days list size: ${multiDaysWeatherList.length}");

    }
    else if (response.statusCode == 402){
      Utils.showToastMessage(toastMsg: "No corresponding record found");
    }


    changeFetchingData(false);

    notifyListeners();

  }


}