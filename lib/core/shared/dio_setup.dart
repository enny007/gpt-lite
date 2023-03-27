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
