import 'package:flutter_ai/core/domain/models_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ModelsNotifier extends StateNotifier<CurrentModel> {
  ModelsNotifier() : super(const CurrentModel());

  void setState(String model) {
    state = state.copyWith(currentModel: model);
  }
}


