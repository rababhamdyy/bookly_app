import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;
  final _baseUrl = 'https://www.googleapis.com/';
  ApiService(this._dio);

  Future<Map<String, dynamic>> get({
    required String endPoint,
    Map<String, dynamic>? query,
  }) async {
    var response = await _dio.get('$_baseUrl$endPoint', queryParameters: query);
    return response.data;
  }
}
