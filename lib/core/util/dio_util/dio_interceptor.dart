import 'package:dio/dio.dart';

class CustomInterceptor extends InterceptorsWrapper {
  @override
  Future onRequest(RequestOptions options) {
    print('###############LOG REQUEST: \n $options');
    return super.onRequest(options);
  }

  @override
  Future onResponse(Response response) {
    print('###############LOG RESPONSE: \n $response');
    return super.onResponse(response);
  }

  @override
  Future onError(DioError err) {
    print('###############LOG ERROR: \n $err');
    return super.onError(err);
  }
}
