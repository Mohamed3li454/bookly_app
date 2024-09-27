import 'package:dio/dio.dart';

abstract class Failures {
  final String errormassage;

  Failures({required this.errormassage});
}

class ServerFailure extends Failures {
  ServerFailure({required super.errormassage});

  factory ServerFailure.FromDioError(DioException dioerror) {
    switch (dioerror.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errormassage: "Connection Timeout With ApiServer");
      case DioExceptionType.sendTimeout:
        return ServerFailure(errormassage: "Send Timeout With ApiServer");
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errormassage: "Receive Timeout With ApiServer");
      case DioExceptionType.badCertificate:
        return ServerFailure.fromResponse(
            dioerror.response!.statusCode!, dioerror.response!.data);
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioerror.response!.statusCode!, dioerror.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure(
            errormassage: "Connection With ApiServer is cancel");
      case DioExceptionType.connectionError:
        return ServerFailure(errormassage: "Connection Error!");
      case DioExceptionType.unknown:
        if (dioerror.message!.contains("SocketException")) {
          return ServerFailure(errormassage: "No INternet connection");
        }
        return ServerFailure(errormassage: "unknown Error!");
      default:
        return ServerFailure(errormassage: "Oops there was an error!");
    }
  }
  factory ServerFailure.fromResponse(int statuscode, dynamic response) {
    if (statuscode == 400 || statuscode == 401 || statuscode == 403) {
      return ServerFailure(errormassage: response['error']['message']);
    } else if (statuscode == 404) {
      return ServerFailure(errormassage: "Error! 404");
    } else if (statuscode == 500) {
      return ServerFailure(errormassage: "Internal Server Error");
    } else {
      return ServerFailure(errormassage: "Oops there was an error");
    }
  }
}
