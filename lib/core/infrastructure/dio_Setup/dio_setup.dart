import 'package:dio/dio.dart';

const apiKey = String.fromEnvironment('openAiKey');
Dio dio() {
  var dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.openai.com/v1',
      responseType: ResponseType.json,
      headers: {
        'content-type': 'application/json',
        'Authorization': 'Bearer $apiKey',
      },
    ),
  );
  return dio;
}
