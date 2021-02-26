import 'package:weather_app/constants.dart';
import 'package:weather_app/main.dart';
import 'package:weather_app/models/current/current_weather/current_weather.dart';
import 'package:weather_app/models/detail/detail_weather/detail_weather.dart';
import 'package:weather_app/repository/network/api_result.dart';
import 'package:weather_app/repository/network/dio_client.dart';
import 'package:weather_app/repository/network/network_exceptions.dart';

class NetworkRepository {

  Future<ApiResult<CurrentWeather>> fetchCurrentWeatherData(
      String cityName) async {
    try {
      final Map<String, dynamic> json = await DioClient().get('weather',
          queryParameters: <String, dynamic>{
            'q': cityName,
            'appid': Api.apiToken
          }) as Map<String, dynamic>;
      final CurrentWeather currentWeather = CurrentWeather.fromJson(json);
      return ApiResult<CurrentWeather>.success(data: currentWeather);
    } catch (e) {
      logger.e(NetworkExceptions.getErrorMessage(
          NetworkExceptions.getDioException(e)));
      return ApiResult<CurrentWeather>.failure(
          error: NetworkExceptions.getDioException(e));
    }
  }

  Future<ApiResult<DetailWeather>> fetchDetailWeatherData(
      double lat, double lon) async {
    try {
      final Map<String, dynamic> json = await DioClient().get('onecall',
          queryParameters: <String, dynamic>{
            'lat': lat,
            'lon': lon,
            'appid': Api.apiToken
          }) as Map<String, dynamic>;
      final DetailWeather detailWeather = DetailWeather.fromJson(json);
      return ApiResult<DetailWeather>.success(data: detailWeather);
    } catch (e) {
      logger.e(NetworkExceptions.getErrorMessage(
          NetworkExceptions.getDioException(e)));
      return ApiResult<DetailWeather>.failure(
          error: NetworkExceptions.getDioException(e));
    }
  }
}
