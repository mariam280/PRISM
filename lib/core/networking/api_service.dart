import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiService {
  final Dio dio;

  ApiService({required this.dio}) {
    dio.options = BaseOptions(
      baseUrl: dotenv.env['BaseUrl']!,
      headers: {'Content-Type': 'application/json'},
      receiveTimeout: const Duration(seconds: 30),
      connectTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(seconds: 30),
      responseType: ResponseType.json,
      followRedirects: false,
    );

    dio.interceptors.add(
      LogInterceptor(
         request: true,
    requestBody: false,
    responseBody: false,
    error: true,
      ),
    );
    
  }

  String get _apiKey => dotenv.env['GEMINI_API_KEY'] ?? '';

  Future<dynamic> post(String url, {dynamic data}) async {
    final response = await dio.post(
      url,
      data: data,
      queryParameters: {'key': _apiKey},
    );
    return response.data;
  }
}