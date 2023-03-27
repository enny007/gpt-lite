import 'package:freezed_annotation/freezed_annotation.dart';

part 'models_model.freezed.dart';
part 'models_model.g.dart';

@freezed
class ModelsModel with _$ModelsModel {
  const ModelsModel._();
  const factory ModelsModel({
    required String id,
    required int created,
    required String root,
  }) = _ModelsModel;

  factory ModelsModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsModelFromJson(json);

  static List<ModelsModel> modelsFromSnapshot(List modelSnapshot) {
    return modelSnapshot.map((data) => ModelsModel.fromJson(data)).toList();
  }
}

@freezed
class CurrentModel with _$CurrentModel {
  const CurrentModel._();
  const factory CurrentModel({
    @Default('gpt-3.5-turbo') String currentModel,
  }) = _CurrentModel;
}
