// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_responce.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TodoResponse _$TodoResponseFromJson(Map<String, dynamic> json) {
  return _TodoResponce.fromJson(json);
}

/// @nodoc
mixin _$TodoResponse {
  String? get userId => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  bool? get completed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoResponseCopyWith<TodoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoResponseCopyWith<$Res> {
  factory $TodoResponseCopyWith(
          TodoResponse value, $Res Function(TodoResponse) then) =
      _$TodoResponseCopyWithImpl<$Res>;
  $Res call({String? userId, int? id, String? title, bool? completed});
}

/// @nodoc
class _$TodoResponseCopyWithImpl<$Res> implements $TodoResponseCopyWith<$Res> {
  _$TodoResponseCopyWithImpl(this._value, this._then);

  final TodoResponse _value;
  // ignore: unused_field
  final $Res Function(TodoResponse) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? completed = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_TodoResponceCopyWith<$Res>
    implements $TodoResponseCopyWith<$Res> {
  factory _$$_TodoResponceCopyWith(
          _$_TodoResponce value, $Res Function(_$_TodoResponce) then) =
      __$$_TodoResponceCopyWithImpl<$Res>;
  @override
  $Res call({String? userId, int? id, String? title, bool? completed});
}

/// @nodoc
class __$$_TodoResponceCopyWithImpl<$Res>
    extends _$TodoResponseCopyWithImpl<$Res>
    implements _$$_TodoResponceCopyWith<$Res> {
  __$$_TodoResponceCopyWithImpl(
      _$_TodoResponce _value, $Res Function(_$_TodoResponce) _then)
      : super(_value, (v) => _then(v as _$_TodoResponce));

  @override
  _$_TodoResponce get _value => super._value as _$_TodoResponce;

  @override
  $Res call({
    Object? userId = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? completed = freezed,
  }) {
    return _then(_$_TodoResponce(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TodoResponce extends _TodoResponce {
  _$_TodoResponce({this.userId, this.id, this.title, this.completed})
      : super._();

  factory _$_TodoResponce.fromJson(Map<String, dynamic> json) =>
      _$$_TodoResponceFromJson(json);

  @override
  final String? userId;
  @override
  final int? id;
  @override
  final String? title;
  @override
  final bool? completed;

  @override
  String toString() {
    return 'TodoResponse(userId: $userId, id: $id, title: $title, completed: $completed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoResponce &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.completed, completed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(completed));

  @JsonKey(ignore: true)
  @override
  _$$_TodoResponceCopyWith<_$_TodoResponce> get copyWith =>
      __$$_TodoResponceCopyWithImpl<_$_TodoResponce>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TodoResponceToJson(this);
  }
}

abstract class _TodoResponce extends TodoResponse {
  factory _TodoResponce(
      {final String? userId,
      final int? id,
      final String? title,
      final bool? completed}) = _$_TodoResponce;
  _TodoResponce._() : super._();

  factory _TodoResponce.fromJson(Map<String, dynamic> json) =
      _$_TodoResponce.fromJson;

  @override
  String? get userId => throw _privateConstructorUsedError;
  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  bool? get completed => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TodoResponceCopyWith<_$_TodoResponce> get copyWith =>
      throw _privateConstructorUsedError;
}
