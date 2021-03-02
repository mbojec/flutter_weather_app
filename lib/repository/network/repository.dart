import 'package:weather_app/common/constants.dart';
import 'package:weather_app/main.dart';
import 'package:weather_app/models/city/city_data/city_data.dart';
import 'package:weather_app/models/weather/weather_data/weather_data.dart';
import 'package:weather_app/repository/network/api_result.dart';
import 'package:weather_app/repository/network/dio_client.dart';
import 'package:weather_app/repository/network/network_exceptions.dart';

class NetworkRepository {

  Future<ApiResult<CityData>> fetchCityData(
      String cityName) async {
    try {
      final Map<String, dynamic> json = await DioClient().get('weather',
          queryParameters: <String, dynamic>{
            'q': cityName,
            'units':'metric',
            'appid': Api.apiToken
          }) as Map<String, dynamic>;
      final CityData currentWeather = CityData.fromJson(json);
      return ApiResult<CityData>.success(data: currentWeather);
    } catch (e) {
      logger.e(NetworkExceptions.getErrorMessage(
          NetworkExceptions.getDioException(e)));
      return ApiResult<CityData>.failure(
          error: NetworkExceptions.getDioException(e));
    }
  }

  Future<ApiResult<WeatherData>> fetchweatherDataData(
      double lat, double lon) async {
    try {
      final Map<String, dynamic> json = await DioClient().get('onecall',
          queryParameters: <String, dynamic>{
            'lat': lat,
            'lon': lon,
            'units':'metric',
            'appid': Api.apiToken
          }) as Map<String, dynamic>;
      final WeatherData weatherData = WeatherData.fromJson(json);
      return ApiResult<WeatherData>.success(data: weatherData);
    } catch (e) {
      logger.e(NetworkExceptions.getErrorMessage(
          NetworkExceptions.getDioException(e)));
      return ApiResult<WeatherData>.failure(
          error: NetworkExceptions.getDioException(e));
    }
  }
}
