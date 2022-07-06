// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_responce.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TodoResponce _$$_TodoResponceFromJson(Map<String, dynamic> json) =>
    _$_TodoResponce(
      userId: json['userId'] as String?,
      id: json['id'] as int?,
      title: json['title'] as String?,
      completed: json['completed'] as bool?,
    );

Map<String, dynamic> _$$_TodoResponceToJson(_$_TodoResponce instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'title': instance.title,
      'completed': instance.completed,
    };
