import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_ai/core/domain/chat_model.dart';
import 'package:flutter_ai/core/domain/models_model.dart';
import 'package:flutter_ai/core/shared/dio_setup.dart';

class OpenAi {
  Future<List<ModelsModel>> getModels() async {
    try {
      final response = await dio().get('/models');

      Map jsonResponse = response.data;

      List temp = [];
      for (var data in jsonResponse['data']) {
        temp.add(data);
        // log('temp ${data['id']}');
      }
      // print(jsonResponse);
      return ModelsModel.modelsFromSnapshot(temp);
    } on DioError catch (e) {
      print(e.error);
      rethrow;
    }
  }

  //Send Message

  Future<List<ChatModel>> sendMessage(
      {required String modelId, required String message}) async {
    try {
      final response = await dio().post(
        '/completions',
        data: jsonEncode(
          {
            'model': modelId,
            'prompt': message,
            'max_tokens': 100,
          },
        ),
      );

      Map jsonResponse = response.data;

      List<ChatModel> chatList = [];

      if (jsonResponse['choices'].length > 0) {
        chatList = List.generate(
          jsonResponse['choices'].length,
          (index) {
            return ChatModel(
              msg: jsonResponse['choices'][index]['text'],
              chatIndex: 1,
            );
          },
        );
      }
      return chatList;
    } on DioError catch (e) {
      print(e.error);
      rethrow;
    }
  }
}
