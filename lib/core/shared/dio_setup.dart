import 'package:dio/dio.dart';

const api_key = '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';
Dio dio() {
  var dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.openai.com/v1',
      responseType: ResponseType.json,
      headers: {
        'content-type': 'application/json',
        'Authorization': 'Bearer $api_key',
      },
    ),
  );
  return dio;
}
