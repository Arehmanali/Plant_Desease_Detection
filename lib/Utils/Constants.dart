



import 'package:flutter/cupertino.dart';

const String prefs_username = "username";
const String prefs_onboarding_viewed = "onboarding_viewed";
const String prefs_userLoggedIn = "user_loggedIn";
GlobalKey<NavigatorState>? navigatorKey;

//const NewsUrl = "https://newsapi.org/v2/everything?q=tesla&from=2022-03-20&sortBy=publishedAt&apiKey=96479cd3ce4c497f8a1936d3fd7bd143";
const NewsUrl = "https://newsapi.org/v2/top-headlines?country=my&apiKey=fbaab164d1f44f429c232b5c8d8d3791&category=";

const SearchLocationUrl = "https://www.metaweather.com/api/location/search/?query=";
String WeatherBylocationApiUrl = 'https://www.metaweather.com/api/location/';


const SingleDayWeatherApi = "https://community-open-weather-map.p.rapidapi.com/weather?q=";
const MultiDaysWeatherApi = "https://community-open-weather-map.p.rapidapi.com/forecast?q=";
