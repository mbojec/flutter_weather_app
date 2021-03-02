import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:weather_app/common/constants.dart';

const int _defaultConnectTimeout = Duration.millisecondsPerMinute;
const int _defaultReceiveTimeout = Duration.millisecondsPerMinute;

class DioClient {
  Dio _dio;
  static final DioClient _instance = DioClient._internal();
  factory DioClient() => _instance;

  DioClient._internal() {
    _dio = Dio();
    _dio
      ..options.baseUrl = Api.baseUrl
      ..options.connectTimeout = _defaultConnectTimeout
      ..options.receiveTimeout = _defaultReceiveTimeout
      ..options.headers = <String, String>{'Content-Type': 'application/json; charset=UTF-8'};
    if (kDebugMode) {
      _dio.interceptors.add(
        LogInterceptor(
          responseBody: true,
          requestHeader: false,
          responseHeader: false,
          request: false,
        ),
      );
    }
  }

  Future<dynamic> get(
    String uri, {
    Map<String, dynamic> queryParameters,
    Options options,
    CancelToken cancelToken,
    ProgressCallback onReceiveProgress,
  }) async {
    try {
      // _dio.options.headers = <String, String>{
      //   'Content-Type': 'application/json; charset=UTF-8',
      //   'authorization': 'Bearer ${Api.apiToken}'
      // };
      final Response<dynamic> response = await _dio.get(
        uri,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      return response.data;
    } on SocketException catch (e) {
      throw SocketException(e.toString());
    } on FormatException catch (_) {
      throw const FormatException('Unable to process the data');
    } catch (e) {
      rethrow;
    }
  }
}
