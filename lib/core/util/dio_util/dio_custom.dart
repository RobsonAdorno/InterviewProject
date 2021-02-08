import 'package:dio/dio.dart';

import '../dio_util/dio_util.dart';
import '../../constant/constant.dart';

class CustomDio {
  static Dio createDio() {
    Dio dio = Dio();

    dio.options.baseUrl = Strings.baseURL;
    // dio.options.baseUrl = 'http://10.0.2.2:8080/';
    dio.options.contentType = 'application/json';
    dio.interceptors.add(CustomInterceptor());
    dio.options.connectTimeout = 15000;

    return dio;
  }
}
