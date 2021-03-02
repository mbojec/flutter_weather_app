class RouteList {
  static const String search = '/search';
  static const String weather = '/weather';
  static const String details = '/details';
}

class Api {
  static const String baseUrl = 'https://api.openweathermap.org/data/2.5/';
  static const String apiToken= 'c0ca4243a888e7f51e1b0549e9447f44';
}

class Dimensions {
  static const double margin = 16.0;
  static const double searchBarHeight = 40.0;
}

enum IconColor{color, black, grey}

const Map<String, String> kWeatherIcons = <String, String>{
  '01d':'clear_sky_day.png',
  '01n':'clear_sky_night.png',
  '02d':'few_clouds_day.png',
  '02n':'few_clouds_night.png',
  '03d':'scattered_clouds.png',
  '03n':'scattered_clouds.png',
  '04d':'broken_clouds.png',
  '04n':'broken_clouds.png',
  '09d':'shower_rain.png',
  '09n':'shower_rain.png',
  '10d':'rain_day.png',
  '10n':'rain_night.png',
  '11d':'thunderstorm.png',
  '11n':'thunderstorm.png',
  '13d':'snow.png',
  '13n':'snow.png',
  '50d':'mist.png',
  '50n':'mist.png',
};