import 'package:dio/dio.dart';
import 'package:prism/core/errors/failure.dart';

class ServerFailer extends Failuer {
  ServerFailer(super.errorMessage);

  factory ServerFailer.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailer('Connection timedout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailer('Send timedout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailer('Receive timedout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailer(
          'There is an issue with the server security certificate. Please try again later or contact support.',
        );
      case DioExceptionType.badResponse:
        return ServerFailer.fromResponse(
          dioException.response!.statusCode!,
          dioException.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailer('Request to ApiServse was canceld');
      case DioExceptionType.connectionError:
        return ServerFailer(
          'Unable to connect to the server. Please check your internet connection and try again.',
        );
      case DioExceptionType.unknown:
        if (dioException.message != null &&
            dioException.message!.contains('SocketException')) {
          return ServerFailer('No internet connection!');
        }
        return ServerFailer('Unexcepected error, Please try again!');
        default:
        return ServerFailer('Oops there was an error, Please try again!');
    }
  }

  factory ServerFailer.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      // Gemini's error responses look like:
      // { "error": { "code": 400, "message": "...", "status": "..." } }
      final message = response is Map
          ? (response['error']?['message'] ?? response['message'])
          : null;
      return ServerFailer(message?.toString() ?? 'Request rejected by the server.');
    } else if (statusCode == 404) {
      return ServerFailer('Your request not found, Please try later!');
    } else if (statusCode == 409) {
      return ServerFailer('Conflict error, Please check your request!');
    } else if (statusCode == 422) {
      return ServerFailer(
        'Unprocessable Entity, Please check the data you entered!',
      );
    } else if (statusCode == 429) {
      return ServerFailer(
        'You’ve reached your usage limit. Check your plan or billing details to continue or try again next day!',
      );
    } else if (statusCode == 500) {
      return ServerFailer('Internal server error, Please try later!');
    } else if (statusCode == 504) {
      return ServerFailer('Gateway Timeout, Server took too long to respond!');
    } else if (statusCode == 503) {
      return ServerFailer('Service Unavailable, Please try again later!');
    } else {
      return ServerFailer('Oops there was an error, Please try again!');
    }
  }
}