import 'dart:io';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/main.dart';

part 'network_exceptions.freezed.dart';

@freezed
abstract class NetworkExceptions with _$NetworkExceptions {
  const factory NetworkExceptions.requestCancelled() = RequestCancelled;

  const factory NetworkExceptions.unauthorizedRequest() = UnauthorizedRequest;

  const factory NetworkExceptions.badRequest() = BadRequest;

  const factory NetworkExceptions.notFound(String reason) = NotFound;

  const factory NetworkExceptions.methodNotAllowed() = MethodNotAllowed;

  const factory NetworkExceptions.notAcceptable() = NotAcceptable;

  const factory NetworkExceptions.requestTimeout() = RequestTimeout;

  const factory NetworkExceptions.sendTimeout() = SendTimeout;

  const factory NetworkExceptions.conflict() = Conflict;

  const factory NetworkExceptions.internalServerError() = InternalServerError;

  const factory NetworkExceptions.notImplemented() = NotImplemented;

  const factory NetworkExceptions.serviceUnavailable() = ServiceUnavailable;

  const factory NetworkExceptions.noInternetConnection() = NoInternetConnection;

  const factory NetworkExceptions.formatException() = FormatException;

  const factory NetworkExceptions.unableToProcess() = UnableToProcess;

  const factory NetworkExceptions.defaultError(String error) = DefaultError;

  const factory NetworkExceptions.unexpectedError() = UnexpectedError;

  // ignore: prefer_constructors_over_static_methods
  static NetworkExceptions handleResponse(int statusCode) {
    switch (statusCode) {
      case 400:
      case 401:
      case 403:
        return const NetworkExceptions.unauthorizedRequest();
        break;
      case 404:
        return const NetworkExceptions.notFound('Not found');
        break;
      case 409:
        return const NetworkExceptions.conflict();
        break;
      case 408:
        return const NetworkExceptions.requestTimeout();
        break;
      case 500:
        return const NetworkExceptions.internalServerError();
        break;
      case 503:
        return const NetworkExceptions.serviceUnavailable();
        break;
      default:
        final int responseCode = statusCode;
        return NetworkExceptions.defaultError(
          'Received invalid status code: $responseCode',
        );
    }
  }

  // ignore: prefer_constructors_over_static_methods
  static NetworkExceptions getDioException(dynamic error) {
    if (error is Exception) {
      try {
        NetworkExceptions networkExceptions;
        if (error is DioError) {
          switch (error.type) {
            case DioErrorType.CANCEL:
              networkExceptions = const NetworkExceptions.requestCancelled();
              break;
            case DioErrorType.CONNECT_TIMEOUT:
              networkExceptions = const NetworkExceptions.requestTimeout();
              break;
            case DioErrorType.DEFAULT:
              networkExceptions =
                  const NetworkExceptions.noInternetConnection();
              break;
            case DioErrorType.RECEIVE_TIMEOUT:
              networkExceptions = const NetworkExceptions.sendTimeout();
              break;
            case DioErrorType.RESPONSE:
              networkExceptions =
                  NetworkExceptions.handleResponse(error.response.statusCode);
              break;
            case DioErrorType.SEND_TIMEOUT:
              networkExceptions = const NetworkExceptions.sendTimeout();
              break;
          }
        } else if (error is SocketException) {
          networkExceptions = const NetworkExceptions.noInternetConnection();
        } else {
          networkExceptions = const NetworkExceptions.unexpectedError();
        }
        return networkExceptions;
      } on FormatException catch (e) {
        logger.e(e);
        return const NetworkExceptions.formatException();
      } catch (_) {
        return const NetworkExceptions.unexpectedError();
      }
    } else {
      if (error.toString().contains('is not a subtype of')) {
        return const NetworkExceptions.unableToProcess();
      } else {
        return const NetworkExceptions.unexpectedError();
      }
    }
  }

  static String getErrorMessage(NetworkExceptions networkExceptions) {
    String errorMessage = '';
    networkExceptions.when(notImplemented: () {
      errorMessage = 'Not Implemented';
    }, requestCancelled: () {
      errorMessage = 'Request Cancelled';
    }, internalServerError: () {
      errorMessage = 'Internal Server Error';
    }, notFound: (String reason) {
      errorMessage = reason;
    }, serviceUnavailable: () {
      errorMessage = 'Service unavailable';
    }, methodNotAllowed: () {
      errorMessage = 'Method Allowed';
    }, badRequest: () {
      errorMessage = 'Bad request';
    }, unauthorizedRequest: () {
      errorMessage = 'Unauthorized request';
    }, unexpectedError: () {
      errorMessage = 'Unexpected error occurred';
    }, requestTimeout: () {
      errorMessage = 'Connection request timeout';
    }, noInternetConnection: () {
      errorMessage = 'No internet connection';
    }, conflict: () {
      errorMessage = 'Error due to a conflict';
    }, sendTimeout: () {
      errorMessage = 'Send timeout in connection with API server';
    }, unableToProcess: () {
      errorMessage = 'Unable to process the data';
    }, defaultError: (String error) {
      errorMessage = error;
    }, formatException: () {
      errorMessage = 'Unexpected error occurred';
    }, notAcceptable: () {
      errorMessage = 'Not acceptable';
    });
    return errorMessage;
  }
}
