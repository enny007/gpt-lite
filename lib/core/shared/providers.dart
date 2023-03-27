import 'package:flutter_ai/core/application/chat_notifier.dart';
import 'package:flutter_ai/core/application/model_notifier.dart';
import 'package:flutter_ai/core/domain/chat_model.dart';
import 'package:flutter_ai/core/domain/models_model.dart';
import 'package:flutter_ai/core/infrastructure/open_ai.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final apiProvider = Provider<OpenAi>((ref) => OpenAi());

final modelFutureProvider = FutureProvider.autoDispose((ref) {
  final apiService = ref.watch(apiProvider);
  return apiService.getModels();
});

final currentModelProvider = Provider((ref) => const CurrentModel());

final chatNotifierProvider =
    StateNotifierProvider<ChatNotifier, List<ChatModel>>((ref) {
  return ChatNotifier();
});

final modelNotifier =
    StateNotifierProvider<ModelsNotifier, CurrentModel>((ref) {
  return ModelsNotifier();
});
