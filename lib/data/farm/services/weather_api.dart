import 'package:agricure/data/farm/models/Forecast.dart';
import 'package:agricure/data/farm/models/Location.dart';

abstract class WeatherApi {
  Future<Forecast> getWeather(Location location);
  Future<Location> getLocation(String city);
}
