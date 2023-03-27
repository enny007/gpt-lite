// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ModelsModel _$ModelsModelFromJson(Map<String, dynamic> json) {
  return _ModelsModel.fromJson(json);
}

/// @nodoc
mixin _$ModelsModel {
  String get id => throw _privateConstructorUsedError;
  int get created => throw _privateConstructorUsedError;
  String get root => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelsModelCopyWith<ModelsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelsModelCopyWith<$Res> {
  factory $ModelsModelCopyWith(
          ModelsModel value, $Res Function(ModelsModel) then) =
      _$ModelsModelCopyWithImpl<$Res, ModelsModel>;
  @useResult
  $Res call({String id, int created, String root});
}

/// @nodoc
class _$ModelsModelCopyWithImpl<$Res, $Val extends ModelsModel>
    implements $ModelsModelCopyWith<$Res> {
  _$ModelsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = null,
    Object? root = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int,
      root: null == root
          ? _value.root
          : root // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ModelsModelCopyWith<$Res>
    implements $ModelsModelCopyWith<$Res> {
  factory _$$_ModelsModelCopyWith(
          _$_ModelsModel value, $Res Function(_$_ModelsModel) then) =
      __$$_ModelsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, int created, String root});
}

/// @nodoc
class __$$_ModelsModelCopyWithImpl<$Res>
    extends _$ModelsModelCopyWithImpl<$Res, _$_ModelsModel>
    implements _$$_ModelsModelCopyWith<$Res> {
  __$$_ModelsModelCopyWithImpl(
      _$_ModelsModel _value, $Res Function(_$_ModelsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = null,
    Object? root = null,
  }) {
    return _then(_$_ModelsModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int,
      root: null == root
          ? _value.root
          : root // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ModelsModel extends _ModelsModel {
  const _$_ModelsModel(
      {required this.id, required this.created, required this.root})
      : super._();

  factory _$_ModelsModel.fromJson(Map<String, dynamic> json) =>
      _$$_ModelsModelFromJson(json);

  @override
  final String id;
  @override
  final int created;
  @override
  final String root;

  @override
  String toString() {
    return 'ModelsModel(id: $id, created: $created, root: $root)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ModelsModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.root, root) || other.root == root));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, created, root);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ModelsModelCopyWith<_$_ModelsModel> get copyWith =>
      __$$_ModelsModelCopyWithImpl<_$_ModelsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModelsModelToJson(
      this,
    );
  }
}

abstract class _ModelsModel extends ModelsModel {
  const factory _ModelsModel(
      {required final String id,
      required final int created,
      required final String root}) = _$_ModelsModel;
  const _ModelsModel._() : super._();

  factory _ModelsModel.fromJson(Map<String, dynamic> json) =
      _$_ModelsModel.fromJson;

  @override
  String get id;
  @override
  int get created;
  @override
  String get root;
  @override
  @JsonKey(ignore: true)
  _$$_ModelsModelCopyWith<_$_ModelsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CurrentModel {
  String get currentModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrentModelCopyWith<CurrentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentModelCopyWith<$Res> {
  factory $CurrentModelCopyWith(
          CurrentModel value, $Res Function(CurrentModel) then) =
      _$CurrentModelCopyWithImpl<$Res, CurrentModel>;
  @useResult
  $Res call({String currentModel});
}

/// @nodoc
class _$CurrentModelCopyWithImpl<$Res, $Val extends CurrentModel>
    implements $CurrentModelCopyWith<$Res> {
  _$CurrentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentModel = null,
  }) {
    return _then(_value.copyWith(
      currentModel: null == currentModel
          ? _value.currentModel
          : currentModel // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CurrentModelCopyWith<$Res>
    implements $CurrentModelCopyWith<$Res> {
  factory _$$_CurrentModelCopyWith(
          _$_CurrentModel value, $Res Function(_$_CurrentModel) then) =
      __$$_CurrentModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String currentModel});
}

/// @nodoc
class __$$_CurrentModelCopyWithImpl<$Res>
    extends _$CurrentModelCopyWithImpl<$Res, _$_CurrentModel>
    implements _$$_CurrentModelCopyWith<$Res> {
  __$$_CurrentModelCopyWithImpl(
      _$_CurrentModel _value, $Res Function(_$_CurrentModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentModel = null,
  }) {
    return _then(_$_CurrentModel(
      currentModel: null == currentModel
          ? _value.currentModel
          : currentModel // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CurrentModel extends _CurrentModel {
  const _$_CurrentModel({this.currentModel = 'text-davinci-001'}) : super._();

  @override
  @JsonKey()
  final String currentModel;

  @override
  String toString() {
    return 'CurrentModel(currentModel: $currentModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrentModel &&
            (identical(other.currentModel, currentModel) ||
                other.currentModel == currentModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrentModelCopyWith<_$_CurrentModel> get copyWith =>
      __$$_CurrentModelCopyWithImpl<_$_CurrentModel>(this, _$identity);
}

abstract class _CurrentModel extends CurrentModel {
  const factory _CurrentModel({final String currentModel}) = _$_CurrentModel;
  const _CurrentModel._() : super._();

  @override
  String get currentModel;
  @override
  @JsonKey(ignore: true)
  _$$_CurrentModelCopyWith<_$_CurrentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
