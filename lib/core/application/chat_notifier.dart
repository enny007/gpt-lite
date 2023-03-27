import 'package:flutter_ai/core/domain/chat_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChatNotifier extends StateNotifier<List<ChatModel>> {
  ChatNotifier() : super([]);

  void addUserMessage({required String msg}) {
    state = [
      ...state,
      ChatModel(msg: msg, chatIndex: 0),
    ];
  }

 
}
