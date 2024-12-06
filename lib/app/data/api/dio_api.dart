import 'dart:async';

import 'package:dio/dio.dart';

class DioApi {
  DioApi() : _dio = Dio();

  final Dio _dio;
  static const _host = "http://15.165.76.65:8000/api/v1";

  Future<Response> get(
    String path, {
    CancelToken? cancelToken,
  }) async {
    return _dio.get(
      _host + path,
      cancelToken: cancelToken,
    );
  }

  Future<Response> post(
    String path, {
    required dynamic data,
    CancelToken? cancelToken,
  }) async {
    return _dio.post(_host + path, data: data, cancelToken: cancelToken);
  }

  Future<Response> delete(
    String path, {
    CancelToken? cancelToken,
  }) async {
    return _dio.delete(_host + path, cancelToken: cancelToken);
  }

  Future<Response> put(
    String path, {
    required dynamic data,
    CancelToken? cancelToken,
  }) async {
    return _dio.put(_host + path, data: data, cancelToken: cancelToken);
  }
}
