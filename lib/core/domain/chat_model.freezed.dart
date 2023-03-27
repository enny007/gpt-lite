// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatModel _$ChatModelFromJson(Map<String, dynamic> json) {
  return _DataClass.fromJson(json);
}

/// @nodoc
mixin _$ChatModel {
  String get msg => throw _privateConstructorUsedError;
  int get chatIndex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatModelCopyWith<ChatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatModelCopyWith<$Res> {
  factory $ChatModelCopyWith(ChatModel value, $Res Function(ChatModel) then) =
      _$ChatModelCopyWithImpl<$Res, ChatModel>;
  @useResult
  $Res call({String msg, int chatIndex});
}

/// @nodoc
class _$ChatModelCopyWithImpl<$Res, $Val extends ChatModel>
    implements $ChatModelCopyWith<$Res> {
  _$ChatModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
    Object? chatIndex = null,
  }) {
    return _then(_value.copyWith(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      chatIndex: null == chatIndex
          ? _value.chatIndex
          : chatIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataClassCopyWith<$Res> implements $ChatModelCopyWith<$Res> {
  factory _$$_DataClassCopyWith(
          _$_DataClass value, $Res Function(_$_DataClass) then) =
      __$$_DataClassCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg, int chatIndex});
}

/// @nodoc
class __$$_DataClassCopyWithImpl<$Res>
    extends _$ChatModelCopyWithImpl<$Res, _$_DataClass>
    implements _$$_DataClassCopyWith<$Res> {
  __$$_DataClassCopyWithImpl(
      _$_DataClass _value, $Res Function(_$_DataClass) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
    Object? chatIndex = null,
  }) {
    return _then(_$_DataClass(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      chatIndex: null == chatIndex
          ? _value.chatIndex
          : chatIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataClass implements _DataClass {
  const _$_DataClass({required this.msg, required this.chatIndex});

  factory _$_DataClass.fromJson(Map<String, dynamic> json) =>
      _$$_DataClassFromJson(json);

  @override
  final String msg;
  @override
  final int chatIndex;

  @override
  String toString() {
    return 'ChatModel(msg: $msg, chatIndex: $chatIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataClass &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.chatIndex, chatIndex) ||
                other.chatIndex == chatIndex));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, msg, chatIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataClassCopyWith<_$_DataClass> get copyWith =>
      __$$_DataClassCopyWithImpl<_$_DataClass>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataClassToJson(
      this,
    );
  }
}

abstract class _DataClass implements ChatModel {
  const factory _DataClass(
      {required final String msg, required final int chatIndex}) = _$_DataClass;

  factory _DataClass.fromJson(Map<String, dynamic> json) =
      _$_DataClass.fromJson;

  @override
  String get msg;
  @override
  int get chatIndex;
  @override
  @JsonKey(ignore: true)
  _$$_DataClassCopyWith<_$_DataClass> get copyWith =>
      throw _privateConstructorUsedError;
}
